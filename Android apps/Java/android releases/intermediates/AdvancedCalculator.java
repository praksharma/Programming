package hacker.prakharsharma.praculator;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class AdvancedCalculator extends AppCompatActivity implements View.OnClickListener {
    private Button b1,b2,b3,b4;
    private TextView res;
    private EditText n1;
    private EditText n2;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_advanced_calculator);
        init();
    }

    private void init() {
        b1=(Button)findViewById(R.id.button);
        b2=(Button)findViewById(R.id.button2);
        b3=(Button)findViewById(R.id.button3);
        b4=(Button)findViewById(R.id.button4);
        n1=(EditText)findViewById(R.id.editText);
        n2=(EditText)findViewById(R.id.editText2);
        res=(TextView)findViewById(R.id.textView3);
        b1.setOnClickListener(this);
        b2.setOnClickListener(this);
        b3.setOnClickListener(this);
        b4.setOnClickListener(this);
    }

    @Override
    public void onClick(View v) {
        int set;
        String num1=n1.getText().toString();
        String num2=n2.getText().toString();
        switch (v.getId())
        {
            case R.id.button:
                 set=Integer.parseInt(num1)+ Integer.parseInt(num2);
                res.setText(String.valueOf(set));
                break;
            case R.id.button2:
                set=Integer.parseInt(num1)- Integer.parseInt(num2);
                res.setText(String.valueOf(set));
                break;
            case R.id.button3:
                set=Integer.parseInt(num1)* Integer.parseInt(num2);
                res.setText(String.valueOf(set));
                break;
            case R.id.button4:
                try
                {
                    set=Integer.parseInt(num1)/ Integer.parseInt(num2);
                    res.setText(String.valueOf(set));
                }
                catch (Exception e)
                {
                 res.setText("Infinity");
                }
                break;


        }
    }
}