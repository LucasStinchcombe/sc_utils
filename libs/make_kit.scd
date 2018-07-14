// sample_kit.scd
(

~make_kit = {
  // returns dictionary of buffer arrays
  arg path;

  var toRet = Dictionary.new;
  PathName(path).entries.do({
    arg item;

    item.postln;
      toRet.add(item.folderName.asString ->
        item.entries.collect({
          arg sf;
          Buffer.read(s, sf.fullPath);
        })
      );
  });
  toRet;
};

)
