package com.example.testsett

class NativeLib {

    /**
     * A native method that is implemented by the 'testsett' native library,
     * which is packaged with this application.
     */
    external fun stringFromJNI(): String

    companion object {
        // Used to load the 'testsett' library on application startup.
        init {
            System.loadLibrary("testsett")
        }
    }
}