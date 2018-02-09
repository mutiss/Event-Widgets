package com.eventwidgets.widgets;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.widget.LinearLayout;

/**
 * Created by Cdorado on 09/02/2018.
 */

public class LinearLayoutCustomParent extends LinearLayout {
    public LinearLayoutCustomParent(Context context) {
        super(context);
    }

    public LinearLayoutCustomParent(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
    }

    public LinearLayoutCustomParent(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent event) {
        int action = MotionEventCompat.getActionMasked(event);

        switch (action) {
            case MotionEvent.ACTION_UP:
                Log.d("SIZE UP", "Event GetSize: " + event.getSize());
            case MotionEvent.ACTION_DOWN:
                Log.d("SIZE DOWN", "Event GetSize: " + event.getSize());
        }

        return false;
    }

}
