package com.eventwidgets.listeners;

import android.support.v4.view.MotionEventCompat;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;

import util.Tag;

/**
 * Created by Cdorado on 09/02/2018.
 */

public class ButtonOnTouchListener implements View.OnTouchListener {

    @Override
    public boolean onTouch(View v, MotionEvent event) {
        int action = MotionEventCompat.getActionMasked(event);

        switch (action) {
            case MotionEvent.ACTION_UP:
                Log.d(Tag.TRACK_TAP, v.getClass().getName()+ " UP");
                Log.d(Tag.TRACK_SIZE_TAP, "Event GetSize: " + event.getSize());
                break;
            case MotionEvent.ACTION_DOWN:
                Log.d(Tag.TRACK_TAP, v.getClass().getName()+ " DOWN");
                Log.d(Tag.TRACK_SIZE_TAP, "Event GetSize: " + event.getSize());
                Log.d(Tag.TRACK_VIEW,v.getClass().getName());
                break;
            case MotionEvent.ACTION_SCROLL:
                Log.d(Tag.TRACK_TAP, "SCROLLING");
                break;


        }

        return false;
    }

    private String fakeMethod(){
        return "Hello";
    }
}
