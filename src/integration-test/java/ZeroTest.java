import org.junit.*;
import static org.junit.Assert.*;

public class ZeroTest {

    @Test
    public void zeroIsZero() {
		assertEquals(0, 0);
    }

	@Test
    public void whatArePickles() {
		assertEquals("Pickles", "Pickles");
    }

	@Test
	@Ignore
	public void skipMe() {
		assertTrue(false);
	}
}
