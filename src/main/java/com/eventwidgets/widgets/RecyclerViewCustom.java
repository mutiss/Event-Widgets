package com.eventwidgets.widgets;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v4.view.MotionEventCompat;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;

/**
 * Created by Cdorado on 07/02/2018.
 */

public class RecyclerViewCustom extends RecyclerView {

    private float xDistance, yDistance, lastX, lastY;

    float initialY, finalY, initialX, finalX;
    public boolean isScrollingUp,isScrollingRight;

    public RecyclerViewCustom(Context context) {
        super(context);
    }

    public RecyclerViewCustom(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
    }

    public RecyclerViewCustom(Context context, @Nullable AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {

        int action = MotionEventCompat.getActionMasked(event);

        switch (action){
            case MotionEvent.ACTION_UP:
                finalX = event.getX();
                finalY = event.getY();

                Log.d("POSITION", "Initial X: " + initialX + "... Final X: " + finalX);
                Log.d("POSITION", "Initial Y: " + initialY + "... Final Y: " + finalY);

                if (initialY < finalY) {
                    Log.d("SCROLL", "Scrolling up");
                } else if (initialY > finalY) {
                    Log.d("SCROLL", "Scrolling down");
                }

                if (initialX < finalX) {
                    Log.d("SCROLL", "Scrolling Left");
                } else if (initialX > finalX) {
                    Log.d("SCROLL", "Scrolling Right");
                }
        }

        return super.onTouchEvent(event);
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent event) {
        int action = MotionEventCompat.getActionMasked(event);

        // Always handle the case of the touch gesture being complete.
        if (action == MotionEvent.ACTION_CANCEL || action == MotionEvent.ACTION_UP) {
            // Release the scroll.
            isScrollingUp = false;
            isScrollingRight = false;
            return false; // Do not intercept touch event, let the child handle it
        }

        switch (action){
            case MotionEvent.ACTION_DOWN:
                initialX = event.getX();
                initialY = event.getY();
            case MotionEvent.ACTION_MOVE: {
                if (isScrollingUp || isScrollingRight) {
                    // We're currently scrolling, so yes, intercept the
                    // touch event!
                    return true;
                }

                if (initialY < finalY) {
                    isScrollingUp = true;
                } else if (initialY > finalY) {
                    isScrollingUp = false;
                }

                if (initialX < finalX) {
                    isScrollingRight = true;
                } else if (initialX > finalX) {
                    isScrollingRight = false;
                }

                break;
            }
        }

        return super.onInterceptTouchEvent(event);
    }
}
