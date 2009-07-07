/*
DMX framework for supercollider
(c) 2007-9 Marije Baalman (nescivi)
GNU/GPL v2.0 or later
Creative Commons Attribution Share Alike v3.0
*/

(
// create a new instance of DMX
d = DMX.new;
// create a DMX device
e = EntTecDMXUSBPro.new( 0 );
// set the device for DMX
d.device = e;

// create an empty cue:
c = DMXCue.new;

// add the cue to DMX:
d.cues.add( c );

c.put( 5, 0.5 );
c.put( 20, 1 );

// set the current cue:
d.currentCue = d.cues.at( 0 );


a = DMXSubCue.new;
a.put( 3, 0.1 );
a.put( 15, 1 );
)

v = DMXGui( d );

a.data

d.currentCue.data
d.map
d.map.findKeyForValue( 3 )

d.map.at(\table)

d.map.put( \table, 2);

d.fade( DMXCue.new, 10.0 );
c = DMXCue.new
c.data
d.fade( c, 10.0 );

b = d.currentCue.deepCopy;
b.merge( a );
b.data
b.data * 0.8 + d.currentCue.data * 0.2

c.data

a.data
a.data.indices

GUI.scrollPane

Tdef( \dmxfade ).envir
Tdef( \dmxfade ).envir.fadeval

Tdef( \dmxfade ).set( \speed, 2 );