# SuperCollider utils to drop mad beats.

Just add the following to startup file
```
(
    ~startup_file = PathName("path/to/sc_utils/startup.scd");
    ~startup_file.fullPath.loadPaths;
)
```
