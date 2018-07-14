// instruments.scd
(

SynthDef.new(\sampler, {
  arg buf=0, rate=1, amp=1;
  var sig;
  sig = PlayBuf.ar(2, buf, BufRateScale.ir(buf) * rate, doneAction:2);
  sig = sig * amp;
  Out.ar(0, sig);
}).add;

SynthDef.new(\dirtplay, {
  arg buf=0, rate=1, amp=1, out=0;
  var sig;
  sig = PlayBuf.ar(1, buf, BufRateScale.ir(buf) * rate, doneAction:2);
  sig = sig * amp;
  Out.ar(out, sig ! 2);
}).add;

)
