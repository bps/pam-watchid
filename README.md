PAM WatchID
-----------
A PAM plugin for authenticating using the new kLAPolicyDeviceOwnerAuthenticationWithBiometricsOrWatch API in macOS 10.15, written in Swift.

![](demo.gif)

Installation
------------
### Quick Install

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/logicer16/pam-watchid/HEAD/install.sh)" -- enable
```

### Manual
1. `$ sudo make install`
2. Edit `/etc/pam.d/sudo` to include as the first line: `auth sufficient pam_watchid.so "reason=execute a command as root"`

_Note that you might have other `auth`, don't remove them._
