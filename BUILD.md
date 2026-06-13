# Building the VNC + noVNC Environment

This project sets up a VNC server on Windows with a web-based interface (noVNC) for easy network access without requiring a dedicated VNC client.

## Components Used

1.  **VNC Server:** UltraVNC (`winvnc.exe`)
    *   Used in "Portable Mode" by placing an empty `ultravnc.portable` file in the directory.
    *   Configuration is stored in `ultravnc.ini`.
2.  **Web Interface:** [noVNC](https://github.com/novnc/noVNC)
    *   Cloned directly from GitHub.
3.  **WebSocket Proxy:** [websockify](https://github.com/novnc/websockify)
    *   Installed via Python (`pip install websockify`).
    *   Bridges the standard VNC traffic (port 5900) to WebSockets (port 6080).

## Setup Steps (Already Completed)

1.  **Install Python:** Required for `websockify`.
2.  **Clone noVNC:**
    ```bash
    git clone https://github.com/novnc/noVNC.git
    ```
3.  **Install websockify:**
    ```bash
    pip install websockify
    ```
4.  **Prepare UltraVNC:**
    *   Copied `winvnc.exe` and required `.dll` files to the project folder.
    *   Created `ultravnc.portable` to ensure settings are saved locally.
5.  **Configure Security:**
    *   Created `ultravnc.ini` with a pre-set password (`vnc`).
    *   Enabled loopback connections to allow `websockify` to talk to the server locally.

## Files Generated
*   `start_vnc.bat`: Orchestration script to start all components.
*   `ultravnc.ini`: Server configuration and password hash.
*   `ACCESS.md`: User guide for connecting.
