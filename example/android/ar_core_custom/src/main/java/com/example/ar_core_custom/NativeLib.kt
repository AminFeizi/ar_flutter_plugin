package com.example.ar_core_custom

class NativeLib {

    /**
     * A native method that is implemented by the 'ar_core_custom' native library,
     * which is packaged with this application.
     */
    external fun stringFromJNI(): String

    companion object {
        // Used to load the 'ar_core_custom' library on application startup.
        init {
            System.loadLibrary("ar_core_custom")
        }
    }
}