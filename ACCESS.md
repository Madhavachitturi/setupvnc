# Accessing the VNC Server

Follow these steps to start the server and connect from another device on your network.

## 1. Start the Server
Double-click the file named **`start_vnc.bat`** in this folder.

This will:
*   Launch the VNC Server.
*   Start the Web Proxy (websockify).
*   Open a command window displaying your IP and status. **Keep this window open while you are using VNC.**

## 2. Connect via Web Browser
From any computer, tablet, or phone on the same Wi-Fi/Network, open your browser and go to:

**`http://192.168.29.178:6080/vnc.html`**

## 3. Login
*   Click the **Connect** button in the browser.
*   When prompted for a password, enter: **`vnc`**

## Troubleshooting
*   **Cannot Connect:** Ensure the device you are connecting from is on the same network (Wi-Fi).
*   **Firewall:** If the page won't load, you may need to open port **6080** in your Windows Firewall.
*   **To Stop:** Close the command window or press any key in the script window to terminate the processes.
