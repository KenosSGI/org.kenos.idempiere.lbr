package org.kenos.idempiere.lbr.base.util;
import java.nio.ByteBuffer;
import java.security.SecureRandom;
import java.util.UUID;

/**
 * UUIDv7 is a 128-bit unique identifier like it's older siblings, 
 * such as the widely used UUIDv4. But unlike v4, UUIDv7 is time-sortable with 1 ms precision. 
 * By combining the timestamp and the random parts, UUIDv7 becomes an excellent choice for 
 * record identifiers in databases, including distributed ones.
 * 
 * https://antonz.org/uuidv7/#java
 * 
 * @author Anton Zhiyanov
 */
public class UUIDv7 {
    private static final SecureRandom random = new SecureRandom();

    public static UUID randomUUID() {
        byte[] value = randomBytes();
        ByteBuffer buf = ByteBuffer.wrap(value);
        long high = buf.getLong();
        long low = buf.getLong();
        return new UUID(high, low);
    }

    public static byte[] randomBytes() {
        // random bytes
        byte[] value = new byte[16];
        random.nextBytes(value);

        // current timestamp in ms
        ByteBuffer timestamp = ByteBuffer.allocate(Long.BYTES);
        timestamp.putLong(System.currentTimeMillis());

        // timestamp
        System.arraycopy(timestamp.array(), 2, value, 0, 6);

        // version and variant
        value[6] = (byte) ((value[6] & 0x0F) | 0x70);
        value[8] = (byte) ((value[8] & 0x3F) | 0x80);

        return value;
    }

    public static void main(String[] args) {
        var uuid = UUIDv7.randomUUID();
        System.out.println(uuid);
    }
}