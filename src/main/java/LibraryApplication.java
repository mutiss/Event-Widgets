import android.app.Application;
import android.content.Context;

/**
 * Created by Cdorado on 07/02/2018.
 */

public class LibraryApplication extends Application {
    /** Instance of the current application. */
    private static LibraryApplication instance;

    /**
     * Constructor.
     */
    public LibraryApplication() {
        instance = this;
    }

    /**
     * Gets the application context.
     *
     * @return the application context
     */
    public static Context getContext() {
        return instance;
    }
}
