# OxygenOS Camera & Bluetooth Fix (Android 16)
[![Download Zip](https://img.shields.io/badge/Download-Flashable%20Zip-blue?style=for-the-badge&logo=android)](releases/latest/download/OxygenOS_Cam_Fix_DRAKEN.zip)

A clean, systemless Magisk / KernelSU module designed for OnePlus devices running OxygenOS on Android 16. Resolves stock camera crashes without breaking Bluetooth HAL or triggering bootloops.

---

## ⚡ Technical Summary
- **Camera Crash Fix:** Binds required proprietary libraries from /my_product/lib64/ to /system/product/lib64/ for the product-clns-9 classloader namespace.
- **SELinux Patch:** Automatically injects runtime policy permissions (\setsched\) for \cameraserver\ and \opluscamera_app\ post-boot.
- **Zero Bluetooth Clashing:** Does not touch \/system/lib64/\ or \public.libraries.txt\, keeping Bionic runtime and Bluetooth JNI completely intact.

---

## 📲 Installation
1. Download **[OxygenOS_Cam_Fix_DRAKEN.zip](releases/latest/download/OxygenOS_Cam_Fix_DRAKEN.zip)** from the Releases section.
2. Open **Magisk**, **Kitsune Mask**, or **KernelSU**.
3. Go to **Modules** > **Install from storage**.
4. Select the zip, let it flash, and reboot.

---

## 👤 Author & Credits
- **Created by:** DRAKEN
