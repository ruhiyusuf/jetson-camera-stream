Libraries / Installations Required On Windows Client

- Gstreamer 1.0 (development and runtime mode)
  - Install `MSVC 64-bit (VS 2019, Release CRT)` - `1.22.1 runtime installer` and `1.22.1 development installer`
    - Make sure to select + download *all* features
  - Add gstreamer-1.0 to Path
    - `Environment Variables` > `System variables` > `Variable :Path` > `Edit` > `New` > `Paste "C:\gstreamer\1.0\msvc_x86_64\bin"` > `OK`
- Ncat (Run installation through nmap)
  - Install `nmap-7.92-setup.exe` from [Nmap release archive ](https://nmap.org/dist/)
