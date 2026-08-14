# Universal Android SELinux Policy Injector & PTY Permission Engine

A Magisk and KernelSU module for Android 15 & 16 designed to automate pseudo-terminal (`/dev/pts`) mount permission fixes (`mode=666`) and inject live SELinux policies (`magiskpolicy`).

---

## 🛡 Features

- **Pseudo-Terminal Mount Re-permissions**: Automatically remounts `/dev/pts` with `gid=5,mode=666,ptmxmode=0666` to resolve TTY allocation failures in root terminal applications.
- **Runtime SELinux Injection**: Injects rules via `sepolicy.rule` and `magiskpolicy --live` to allow untrusted apps and root utilities required access to character devices.

---

## 📦 Installation

1. Download `android-selinux-policy-injector-v1.0.0.zip` from [Releases](https://github.com/beduldul/android-selinux-policy-injector/releases).
2. Install via **Magisk / KernelSU / APatch**.
3. Reboot device.

---

## 📄 License
GPL-3.0 License
