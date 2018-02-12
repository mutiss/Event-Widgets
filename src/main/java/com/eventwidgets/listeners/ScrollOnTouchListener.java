package com.eventwidgets.listeners;

import android.content.Context;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

import com.events.ui.Tag;

/**
 * Created by Cdorado on 09/02/2018.
 */

public class ScrollOnTouchListener implements View.OnTouchListener{

    private float initialY, finalY, initialX, finalX;
    private boolean isScrollingUp,isScrollingRight;

    private final GestureDetector gestureDetector;

    public ScrollOnTouchListener(Context context){
        gestureDetector = new GestureDetector(context, new GestureListener());
    }

    public boolean onTouch(View v, MotionEvent event) {
        Log.d(Tag.TRACK_VIEW,v.getClass().getName());
        return gestureDetector.onTouchEvent(event);
    }

    private final class GestureListener extends GestureDetector.SimpleOnGestureListener {

        private final String TAG = GestureListener.class.getSimpleName();

        private static final int SLIDE_THRESHOLD = 100;

        @Override
        public boolean onSingleTapUp(MotionEvent e) {
            finalX = e.getX();
            finalY = e.getY();

            Log.d(Tag.TRACK_X, "Initial X: " + initialX + "... Final X: " + finalX);
            Log.d(Tag.TRACK_Y, "Initial Y: " + initialY + "... Final Y: " + finalY);
            return super.onSingleTapUp(e);
        }

        @Override
        public boolean onSingleTapConfirmed(MotionEvent e) {
            initialX = e.getX();
            initialY = e.getY();
            return super.onSingleTapConfirmed(e);
        }

        @Override
        public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
            try {
                float deltaY = e2.getY() - e1.getY();
                float deltaX = e2.getX() - e1.getX();

                if (Math.abs(deltaX) > Math.abs(deltaY)) {
                    if (Math.abs(deltaX) > SLIDE_THRESHOLD) {
                        if (deltaX > 0) {
                            // the user made a sliding right gesture
                            return onSlideRight();
                        } else {
                            // the user made a sliding left gesture
                            return onSlideLeft();
                        }
                    }
                } else {
                    if (Math.abs(deltaY) > SLIDE_THRESHOLD) {
                        if (deltaY > 0) {
                            // the user made a sliding down gesture
                            return onSlideDown();
                        } else {
                            // the user made a sliding up gesture
                            return onSlideUp();
                        }
                    }
                }
            } catch (Exception exception) {
                Log.e(TAG, exception.getMessage());
            }

            return false;
        }
    }

    public boolean onSlideRight() {
        Log.d(Tag.TRACK_SCROLL, "Scrolling Right");
        return false;
    }

    public boolean onSlideLeft() {
        Log.d(Tag.TRACK_SCROLL, "Scrolling Left");
        return false;
    }

    public boolean onSlideUp() {
        Log.d(Tag.TRACK_SCROLL, "Scrolling up");
        return false;
    }

    public boolean onSlideDown() {
        Log.d(Tag.TRACK_SCROLL, "Scrolling down");
        return false;
    }

}
