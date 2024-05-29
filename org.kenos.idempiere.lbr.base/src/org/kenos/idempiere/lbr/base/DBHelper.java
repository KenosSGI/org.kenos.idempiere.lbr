package org.kenos.idempiere.lbr.base;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Consumer;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

import org.adempiere.exceptions.DBException;
import org.compiere.util.DB;

/**
 * 	DBHelper is a utility class to simplify the use of PreparedStatement and ResultSet with streams and consumers.
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class DBHelper {

	/**
	 * Executes a SQL query with the given parameters and processes the result set using the provided consumer.
	 *
	 * @param sql the SQL query to be executed
	 * @param parameters the parameters to be set in the PreparedStatement
	 * @param resultSetConsumer the consumer to process the result set
	 * @throws DBException if there is an error executing the query
	 */
	public static void executeQuery(String sql, String trxName, Object[] parameters, Consumer<ResultSet> resultSetConsumer) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = DB.prepareStatement(sql, trxName);
			DB.setParameters(pstmt, parameters);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				resultSetConsumer.accept(rs);
			}
		} catch (SQLException e) {
			throw new DBException(e, sql);
		} finally {
			DB.close(rs, pstmt);
		}
	}	//	executeQuery

	/**
	 * Executes a SQL query with the given parameters and returns a stream of result sets.
	 *
	 * @param sql the SQL query to be executed
	 * @param parameters the parameters to be set in the PreparedStatement
	 * @return a stream of result sets
	 * @throws DBException if there is an error executing the query
	 */
	public static Stream<ResultSet> queryStream(String sql, String trxName, Object[] parameters) {
		final AtomicReference<PreparedStatement> pstmt = new AtomicReference<PreparedStatement>();
		final AtomicReference<ResultSet> rs = new AtomicReference<ResultSet>();
		try {
			pstmt.set(DB.prepareStatement(sql, trxName));
			DB.setParameters(pstmt.get(), parameters);
			rs.set(pstmt.get().executeQuery());

			return StreamSupport.stream(new ResultSetSpliterator(rs.get(), pstmt.get()), false);
		} catch (SQLException e) {
			DB.close(rs.get(), pstmt.get());
			throw new DBException(e, sql);
		}
	}	//	queryStream

	/**
	 * 	ResultSetSpliterator is a Spliterator implementation for iterating over a ResultSet.
	 * 	@author Ricardo Santana <rsantana@kenos.com.br>
	 */
	private static class ResultSetSpliterator extends Spliterators.AbstractSpliterator<ResultSet> {
		private final ResultSet rs;
		private final PreparedStatement pstmt;

		/**
		* Constructs a ResultSetSpliterator.
		*
		* @param rs the ResultSet to be iterated
		* @param pstmt the PreparedStatement associated with the ResultSet
		* @param conn the Connection associated with the PreparedStatement
		*/
		public ResultSetSpliterator(ResultSet rs, PreparedStatement pstmt) {
			super(Long.MAX_VALUE, Spliterator.ORDERED);
			this.rs = rs;
			this.pstmt = pstmt;
		}	//	ResultSetSpliterator

		@Override
		public boolean tryAdvance(Consumer<? super ResultSet> action) {
			try {
				if (!rs.next()) {
					DB.close(rs, pstmt);
					return false;
				}
				action.accept(rs);
				return true;
			} catch (SQLException e) {
				DB.close(rs, pstmt);
				throw new DBException(e);
			}
		}	//	tryAdvance
	}	//	ResultSetSpliterator
}	//	DBHelper