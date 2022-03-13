package com.hacker.prakharsharma.calculator;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {
    private Button b1,b2,b3,b4,b5,b6,b7,b8,b9,b0,eql,add,sub,mul,div,dec,clr;
    private TextView res;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        start();
    }

    private void start() {
        b1=(Button)findViewById(R.id.btn1);
        b2=(Button)findViewById(R.id.btn2);
        b3=(Button)findViewById(R.id.btn3);
        b4=(Button)findViewById(R.id.btn4);
        b5=(Button)findViewById(R.id.btn5);
        b6=(Button)findViewById(R.id.btn6);
        b7=(Button)findViewById(R.id.btn7);
        b8=(Button)findViewById(R.id.btn8);
        b9=(Button)findViewById(R.id.btn9);
        b0=(Button)findViewById(R.id.btn0);
        eql=(Button)findViewById(R.id.eql);
        add=(Button)findViewById(R.id.add);
        sub=(Button)findViewById(R.id.sub);
        mul=(Button)findViewById(R.id.mul);
        div=(Button)findViewById(R.id.div);
        clr=(Button)findViewById(R.id.clr);
        res=(TextView)findViewById(R.id.textView);
        dec=(Button)findViewById(R.id.dec);
        b1.setOnClickListener(this);
        b2.setOnClickListener(this);
        b3.setOnClickListener(this);
        b4.setOnClickListener(this);
        b5.setOnClickListener(this);
        b6.setOnClickListener(this);
        b7.setOnClickListener(this);
        b8.setOnClickListener(this);
        b9.setOnClickListener(this);
        b0.setOnClickListener(this);
        eql.setOnClickListener(this);
        add.setOnClickListener(this);
        sub.setOnClickListener(this);
        mul.setOnClickListener(this);
        div.setOnClickListener(this);
        dec.setOnClickListener(this);
        clr.setOnClickListener(this);

    }

    @Override
    public void onClick(View v) {

        switch(v.getId())
        {
            case R.id.btn0:
                res.append("0");
                break;
            case R.id.btn1: res.append("1");
                break;
            case R.id.btn2: res.append("2");
                break;
            case R.id.btn3: res.append("3");
                break;
            case R.id.btn4: res.append("4");
                break;
            case R.id.btn5: res.append("5");
                break;
            case R.id.btn6: res.append("6");
                break;
            case R.id.btn7: res.append("7");
                break;
            case R.id.btn8: res.append("8");
                break;
            case R.id.btn9: res.append("9");
                break;
            case R.id.add: res.append("+");
                break;
            case R.id.sub: res.append("-");
                break;
            case R.id.mul: res.append("*");
                break;
            case R.id.div: res.append("/");
                break;
            case R.id.dec: res.append(".");
                break;
            case R.id.eql:
                try
                {float calc;
                String result=res.getText().toString();
                calc=Float.parseFloat(result);
                res.setText(String.valueOf(calc));
                }
                catch(Exception e)
                {res.setText("Not Defined");
                }
                break;
            case R.id.clr:res.setText("");
                break;

            }


    }
}
