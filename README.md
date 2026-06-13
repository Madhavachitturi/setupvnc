# Windows VNC Server with Virtual Display (noVNC)

This project provides a portable VNC server setup on Windows using **UltraVNC**, with a web-based interface via **noVNC**. It is configured to support a separate **Virtual Display (Desktop 2)** that doesn't use your physical laptop screen.

## Components Used

1.  **VNC Server:** UltraVNC (`winvnc.exe`) - Configured in "Portable Mode".
2.  **Web Interface:** [noVNC](https://github.com/novnc/noVNC) - Web-based VNC client.
3.  **WebSocket Proxy:** [websockify](https://github.com/novnc/websockify) - Bridges VNC traffic to WebSockets for noVNC.

---

## 🚀 Setup and Installation

### 1. Prerequisites
*   **Python:** Required for `websockify`. Install it from [python.org](https://www.python.org/).
*   **Websockify:** Install via pip:
    ```bash
    pip install websockify
    ```

### 2. Enable Virtual Display (For Desktop 2)
To have a separate desktop session that doesn't use your laptop screen, you **must** install the Virtual Display Driver:

1.  Open **Command Prompt as Administrator**.
2.  Navigate to this folder.
3.  Run the driver installation command:
    ```cmd
    winvnc.exe -installdriver
    ```
4.  **Important:** In your Windows **Display Settings**, click "Detect" and ensure the new monitor is set to **"Extend these displays"**.

---

## 🖥️ Usage

### 1. Start the Server
Double-click the file named **`start_vnc.bat`** in this folder.

This will:
*   Launch the UltraVNC Server.
*   Start the Web Proxy (websockify) on port 6080.
*   A command window will stay open; **keep this window open while using VNC.**

### 2. Connect via Web Browser
From any device on the same network, open your browser and go to:

**`http://YOUR_IP:6080/vnc.html`**

*(Check the command window for your current IP address)*

### 3. Login
*   Click the **Connect** button in the browser.
*   When prompted for a password, enter: **`vnc`**

---

## 🛠️ Configuration Details

*   **`ultravnc.ini`:** Contains all server settings. It is configured to use the **Desktop Duplication Engine** and target the **Secondary Monitor** (Virtual Display).
*   **`start_vnc.bat`:** Automatically kills existing processes and restarts the environment.
*   **Portable Mode:** The file `ultravnc.portable` ensures settings are saved in this folder instead of the Registry.

---

## Troubleshooting
*   **Still showing laptop screen:** Ensure you have installed the driver (`-installdriver`) and that Windows is set to "Extend" the display to Monitor 2.
*   **Cannot Connect:** Verify both devices are on the same Wi-Fi/Network. You may need to open port **6080** in your Windows Firewall.
*   **To Stop:** Close the `start_vnc.bat` window or press any key inside it.
