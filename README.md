<h1 align="center">🖥 SEVASTOLINK CRT Dashboard</h1>

<p align="center">
Web-based server monitoring dashboard inspired by the computer terminals of Sevastopol Station from the <b>Alien: Isolation</b> universe.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Status-In%20Development-brightgreen">
  <img src="https://img.shields.io/badge/Version-1.0-blue">
  <img src="https://img.shields.io/badge/Language-HTML%20%7C%20CSS%20%7C%20JavaScript-orange">
  <img src="https://img.shields.io/badge/Integration-HTTP%20API-lightgrey">
  <img src="https://img.shields.io/badge/Interface-CRT%20%7C%20Retro-green">
</p>

---

<h2>📌 About</h2>

<p>
<b>SEVASTOLINK</b> is a web-based server monitoring dashboard inspired by the computer terminals and interfaces found throughout <b>Sevastopol Station</b> in the <b>Alien: Isolation</b> universe.
</p>

<p>
The dashboard runs directly in a web browser and consumes an <b>HTTP API</b> that provides real-time server telemetry.
</p>

<p>
The project was built using <b>HTML, CSS and JavaScript</b>, without requiring a frontend framework.
</p>

<p>
Its visual design recreates a classic CRT terminal experience using phosphor-style glow, scanlines, noise, glitch effects, status indicators and telemetry logs.
</p>

---

<h2>📊 Monitoring</h2>

<p>
SEVASTOLINK continuously displays server resource information received from the monitoring API.
</p>

<ul>
  <li>🖥 CPU Usage</li>
  <li>🌡 CPU Temperature</li>
  <li>💾 RAM Usage</li>
  <li>🔄 SWAP Usage</li>
  <li>💿 Disk Usage</li>
  <li>📦 Used and Total Disk Space</li>
  <li>🌐 LAN IP Address</li>
  <li>📥 Download Speed</li>
  <li>📤 Upload Speed</li>
</ul>

---

<h2>🖥 Interface</h2>

<p>
The dashboard uses a retrofuturistic interface based on classic CRT computer terminals.
</p>

<p>
The layout is organized into four main monitoring panels, allowing the most important server information to be displayed simultaneously.
</p>

<ul>
  <li>🖥 CPU</li>
  <li>💾 Memory</li>
  <li>💿 Storage</li>
  <li>🌐 Network</li>
</ul>

<p>
Each resource is displayed using numerical indicators and dynamic progress bars, making it easy to identify resource utilization at a glance.
</p>

---

<h2>⚠️ Usage Indicators</h2>

<p>
The dashboard automatically evaluates resource utilization and applies warning and critical states according to predefined thresholds.
</p>

<table>
  <tr>
    <th>Resource</th>
    <th>Warning</th>
    <th>Critical</th>
  </tr>
  <tr>
    <td>CPU</td>
    <td>70%</td>
    <td>90%</td>
  </tr>
  <tr>
    <td>RAM</td>
    <td>75%</td>
    <td>92%</td>
  </tr>
  <tr>
    <td>Disk</td>
    <td>80%</td>
    <td>95%</td>
  </tr>
  <tr>
    <td>CPU Temperature</td>
    <td>58°C</td>
    <td>85°C</td>
  </tr>
</table>

<p>
Progress bars automatically change their visual state according to the values received from the API.
</p>

---

<h2>📡 API Communication</h2>

<p>
SEVASTOLINK communicates with the server through an <b>HTTP API</b> responsible for providing the monitoring data.
</p>

<p>
The dashboard performs automatic requests at regular intervals to keep the displayed information synchronized with the server.
</p>

<p>
The current API endpoint is:
</p>

<pre>
http://server:8181/api/rainmeter
</pre>

<p>
The dashboard performs a new synchronization every <b>2 seconds</b>.
</p>

---

<h2>📋 API Format</h2>

<p>
The API returns the monitoring information as plain text using <b>KEY=VALUE</b> pairs.
</p>

<pre>
CPU_USAGE=25
RAM_PERCENT=42
DISK_PERCENT=61
CPU_TEMP=48
SWAP_PERCENT=2
DISK_USED=572
DISK_TOTAL=916
LAN_IP=192.168.1.10
DOWNLOAD=125.4
UPLOAD=18.7
</pre>

<p>
The JavaScript parser processes each line of the response and converts the received values into data used by the dashboard components.
</p>

---

<h2>🔌 Connection Status</h2>

<p>
SEVASTOLINK provides a visual connection indicator that represents the current communication status with the API.
</p>

<ul>
  <li>🟡 <b>SYNCING</b> - Initializing or attempting synchronization</li>
  <li>🟢 <b>ONLINE</b> - API responding successfully</li>
  <li>🔴 <b>LINK LOST</b> - Communication failure</li>
</ul>

<p>
When communication is successfully established, the dashboard automatically updates the displayed server information.
</p>

---

<h2>📟 Telemetry Log</h2>

<p>
The dashboard includes a dedicated telemetry terminal that records API synchronization events.
</p>

<p>
Each event includes its timestamp, while the interface maintains the latest <b>12 log entries</b>.
</p>

<ul>
  <li>📡 TELEMETRY LINK INITIALIZING</li>
  <li>✅ TELEMETRY SYNC OK</li>
  <li>❌ SYNC FAILED</li>
  <li>🕒 Automatic timestamps</li>
  <li>📋 Maximum of 12 visible entries</li>
</ul>

---

<h2>📱 Responsive Scaling</h2>

<p>
The dashboard uses a dynamic scaling system to adapt the interface to the available browser window.
</p>

<p>
The original layout is designed around a <b>1024px</b> reference width and is automatically scaled and centered according to the available screen dimensions.
</p>

<p>
This allows the interface to maintain its visual proportions across different display formats, including standard monitors, ultrawide screens and portrait-oriented displays.
</p>

---

<h2>🎨 Visual Effects</h2>

<p>
The interface was designed to reproduce the appearance of a retro computer terminal.
</p>

<ul>
  <li>🟢 Monospaced typography</li>
  <li>📺 CRT visual effects</li>
  <li>〰 Scanlines</li>
  <li>✨ Phosphor glow</li>
  <li>📺 Visual noise</li>
  <li>⚡ Glitch effects</li>
  <li>▌ Blinking indicators</li>
  <li>🟢 Terminal-style elements</li>
</ul>

---

<h2>🚀 How to Use</h2>

<ol>
  <li>Clone or download the repository</li>
  <li>Open <b>index.html</b></li>
  <li>Configure the API endpoint in the JavaScript section</li>
  <li>Make sure the monitoring API is available</li>
  <li>Open the dashboard in a web browser</li>
  <li>The monitoring process will start automatically</li>
</ol>

<p>
No frontend framework or additional web server is required to run the interface.
</p>

---

<h2>⚙️ Configuration</h2>

<p>
The API endpoint and update interval can be configured directly in the JavaScript section of <b>index.html</b>.
</p>

<pre>
const API_URL = "http://server:8181/api/rainmeter";
const POLL_MS = 2000;
</pre>

<p>
<b>API_URL</b> defines the endpoint used to retrieve the server monitoring data.
</p>

<p>
<b>POLL_MS</b> defines the update interval in milliseconds.
</p>

---

<h2>🧩 Architecture</h2>

<pre>
                    Web Browser
                         │
                         ▼
                  ┌─────────────┐
                  │ index.html  │
                  └──────┬──────┘
                         │
                         ▼
                  JavaScript Poll
                         │
                      Every 2s
                         │
                         ▼
              ┌────────────────────┐
              │      HTTP API      │
              │   /api/rainmeter   │
              └─────────┬──────────┘
                        │
                        ▼
                  Server Telemetry
                        │
                        ▼
              ┌────────────────────┐
              │ KEY=VALUE Parser   │
              └─────────┬──────────┘
                        │
          ┌─────────────┼─────────────┐
          ▼             ▼             ▼
        CPU/RAM       Storage       Network
          │             │             │
          └─────────────┼─────────────┘
                        ▼
                  CRT Dashboard
</pre>

---

<h2>📂 Structure</h2>

<pre>
SEVASTOLINK/
│
└── index.html
</pre>

<p>
The current version contains the complete frontend in a single file, including the HTML structure, CSS styling and JavaScript logic.
</p>

---

<h2>🛠 Technologies</h2>

<ul>
  <li>HTML5</li>
  <li>CSS3</li>
  <li>JavaScript</li>
  <li>Fetch API</li>
  <li>HTTP API</li>
  <li>Regular Expressions</li>
  <li>CSS Transforms</li>
  <li>Dynamic Scaling</li>
</ul>

---

<h2>📡 Monitored Data</h2>

<table>
  <tr>
    <th>Field</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>CPU_USAGE</td>
    <td>CPU utilization percentage</td>
  </tr>
  <tr>
    <td>RAM_PERCENT</td>
    <td>RAM utilization percentage</td>
  </tr>
  <tr>
    <td>DISK_PERCENT</td>
    <td>Disk utilization percentage</td>
  </tr>
  <tr>
    <td>CPU_TEMP</td>
    <td>CPU temperature</td>
  </tr>
  <tr>
    <td>SWAP_PERCENT</td>
    <td>SWAP utilization percentage</td>
  </tr>
  <tr>
    <td>DISK_USED</td>
    <td>Used disk space</td>
  </tr>
  <tr>
    <td>DISK_TOTAL</td>
    <td>Total disk capacity</td>
  </tr>
  <tr>
    <td>LAN_IP</td>
    <td>Local network IP address</td>
  </tr>
  <tr>
    <td>DOWNLOAD</td>
    <td>Download speed</td>
  </tr>
  <tr>
    <td>UPLOAD</td>
    <td>Upload speed</td>
  </tr>
</table>

---

## 📸 Preview

<p align="center">
<i>
<img width="495" height="372" alt="image" src="https://github.com/user-attachments/assets/d1a3aa7a-34ab-4e60-a001-0a5dd36b79cc" />
</i>
</p>

---

<p align="center">
<b>SEVASTOLINK</b> combines real-time server telemetry, HTTP API communication and a retrofuturistic CRT interface inspired by the computer systems of <b>Alien: Isolation</b>. 🖥
</p>
