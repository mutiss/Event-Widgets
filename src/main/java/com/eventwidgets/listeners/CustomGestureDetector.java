package com.eventwidgets.listeners;

import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;

import com.events.ui.Tag;

/**
 * Created by Cdorado on 12/02/2018.
 */

public abstract class CustomGestureDetector extends GestureDetector.SimpleOnGestureListener {


    @Override
    public boolean onSingleTapConfirmed(MotionEvent e) {
        //mGestureText.setText("onSingleTapConfirmed");
        //Log.d(Tag.TRACK_TAP, v.getClass().getName()+ " UP");
        Log.d(Tag.TRACK_TAP, "Single TAP!");
        return true;
    }

    @Override
    public boolean onDoubleTap(MotionEvent e) {
        //mGestureText.setText("onDoubleTap");
        Log.d(Tag.TRACK_TAP, "Double TAP!");
        return true;
    }

    @Override
    public boolean onDoubleTapEvent(MotionEvent e) {
        //mGestureText.setText("onDoubleTapEvent");
        Log.d(Tag.TRACK_TAP, "");
        return true;
    }

    @Override
    public boolean onDown(MotionEvent e) {
        //mGestureText.setText("onDown");
        Log.d(Tag.TRACK_TAP, "");
        return true;
    }

    @Override
    public void onShowPress(MotionEvent e) {
        //mGestureText.setText("onShowPress");
        Log.d(Tag.TRACK_TAP, "");
    }

    @Override
    public boolean onSingleTapUp(MotionEvent e) {
        //mGestureText.setText("onSingleTapUp");
        Log.d(Tag.TRACK_TAP, "");
        return true;
    }

    @Override
    public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
        //mGestureText.setText("onScroll");
        Log.d(Tag.TRACK_TAP, "");
        return true;
    }

    @Override
    public void onLongPress(MotionEvent e) {
        //mGestureText.setText("onLongPress");
        Log.d(Tag.TRACK_TAP, "");
    }

    @Override
    public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
        /*//mGestureText.setText("onFling");
        if (e1.getX() < e2.getX()) {
            Log.d(Tag.TRACK_SCROLL, "Left to Right swipe performed");
        }

        if (e1.getX() > e2.getX()) {
            Log.d(Tag.TRACK_SCROLL, "Right to Left swipe performed");
        }

        if (e1.getY() < e2.getY()) {
            Log.d(Tag.TRACK_SCROLL, "Up to Down swipe performed");
        }

        if (e1.getY() > e2.getY()) {
            Log.d(Tag.TRACK_SCROLL, "Down to Up swipe performed");
        }*/
        return true;
    }
}