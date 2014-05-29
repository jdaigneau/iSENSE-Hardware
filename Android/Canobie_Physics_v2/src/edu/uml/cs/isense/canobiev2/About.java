package edu.uml.cs.isense.canobiev2;

import edu.uml.cs.isense.canobiev2.R;
import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class About extends Activity {
	private Button okButton;

	@Override
	public void onCreate(Bundle savedInstanceBundle) {
		super.onCreate(savedInstanceBundle);
		setContentView(R.layout.about);

		// Creates the OK button so users can leave
		okButton = (Button) findViewById(R.id.loginButton);
		okButton.setOnClickListener(new View.OnClickListener() {

			@Override
			public void onClick(View v) {
				finish();
			}
		});

	}
}
