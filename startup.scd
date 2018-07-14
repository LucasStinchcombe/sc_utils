(
"Running sc_utils startup".postln;

// to use symbols for chords
include("ChordSymbol");

// boot default server
s.boot;

// load all files in libs dir
~cur_dir = thisProcess.nowExecutingPath.dirname;
~lib_dir = ~cur_dir +/+ PathName("libs");

~lib_dir.entries.do({
    arg item;
    item.fullPath.loadPaths;
});
)
