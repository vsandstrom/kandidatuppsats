fork{
	var caust0, caust1, count = 0, cond = 0;
	var db = 69.3, eb = 77.8, g = 98, ab = 51.9;

	// definierar de två variablerna som bestämmer vilken väg 
	// sequencern ska ta
	count = 0;
	cond = true;

	loop{
		if(cond == true) 
		{
			caust0 = Synth(\caust, 
				[\freq, db, \t_trig, 1, \rel, 7.5,  \vol, f.faderAt(8).asMap], 
				addAction: \addToHead);
			15.wait;
			cond = false;
		};
		cond = true;

		caust0 = Synth(\caust, 
			[\freq, ab, \t_trig, 1, \rel, 4.25, \vol, f.faderAt(8).asMap],
			addAction: \addToHead); 
		7.5.wait;

		caust0 = Synth(\caust,
			[\freq, eb, \t_trig, 1, \rel, 4.25, \vol, f.faderAt(8).asMap],
			addAction: \addToHead); 
		7.5.wait;

		count = count + 1;

		if(count == 4) {
			caust0 = Synth(\caust, 
				[\freq, db * 5/4, \t_trig, 1, \rel, 7.5, \vol, f.faderAt(8).asMap],
				addAction: \addToHead); 
			15.wait;
			cond = false;
			count = 0;
		}{
			cond = true;
		}
	}
};
