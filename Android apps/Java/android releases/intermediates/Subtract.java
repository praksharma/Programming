package com.hacker.prakharsharma.test;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {
    private TextView res;
    private EditText e1,e2;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        init();
    }

    private void init() {
        Button b = (Button) findViewById(R.id.button);
        e1=(EditText)findViewById(R.id.editText);
        e2=(EditText)findViewById(R.id.editText2);
        res=(TextView)findViewById(R.id.textView4);
        b.setOnClickListener(this);
    }


    @Override
    public void onClick(View v) {
        String num1=e1.getText().toString();
        String num2=e2.getText().toString();
        int addition= Integer.parseInt(num1) - Integer.parseInt(num2);
        res.setText(String.valueOf(addition));



    }
}
