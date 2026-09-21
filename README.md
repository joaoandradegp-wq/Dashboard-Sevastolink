<h1 align="center">🖥 SEVASTOLINK CRT Dashboard</h1>

<p align="center">
Web-based server monitoring dashboard inspired by the computer terminals of <b>Sevastopol Station</b> from the <b>Alien: Isolation</b> universe.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Status-In%20Development-brightgreen">
  <img src="https://img.shields.io/badge/Version-1.0-blue">
  <img src="https://img.shields.io/badge/Language-HTML%20%7C%20CSS%20%7C%20JavaScript%20%7C%20AutoHotkey-orange">
  <img src="https://img.shields.io/badge/Integration-HTTP%20API-lightgrey">
  <img src="https://img.shields.io/badge/Interface-CRT%20%7C%20Retro-green">
</p>

---

<h2>📌 About</h2>

<p>
<b>SEVASTOLINK CRT Dashboard</b> is a web-based server monitoring dashboard inspired by the computer terminals and interfaces found throughout <b>Sevastopol Station</b> in the <b>Alien: Isolation</b> universe.
</p>

<p>
The dashboard runs directly in a web browser and consumes an <b>HTTP API</b> that provides real-time server telemetry.
</p>

<p>
The interface was built using <b>HTML, CSS and JavaScript</b>, without requiring a frontend framework.
</p>

---

<h2>📊 Monitoring</h2>

<p>
The dashboard continuously displays the main server resources received from the monitoring API.
</p>

<ul>
  <li>🖥 CPU Usage</li>
  <li>🌡 CPU Temperature</li>
  <li>💾 RAM and SWAP Usage</li>
  <li>💿 Disk Usage and Capacity</li>
  <li>🌐 LAN IP Address</li>
  <li>📥 Download Speed</li>
  <li>📤 Upload Speed</li>
</ul>

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
Progress bars and indicators automatically change their visual state according to the values received from the API.
</p>

---

<h2>📡 API Communication</h2>

<p>
SEVASTOLINK communicates with the monitoring server through an <b>HTTP API</b>.
</p>

<p>
The current endpoint is:
</p>

<pre>
http://server:8181/api/monitor
</pre>

<p>
The dashboard performs a new synchronization every <b>2 seconds</b>.
</p>

<p>
The API returns server telemetry as plain text using <b>KEY=VALUE</b> pairs. The JavaScript parser processes the response and updates the corresponding dashboard components.
</p>

---

<h2>🔌 Connection Status</h2>

<p>
The dashboard provides a visual indicator for the current API connection state.
</p>

<ul>
  <li>🟡 <b>SYNCING</b> — Initializing or attempting synchronization</li>
  <li>🟢 <b>ONLINE</b> — API responding successfully</li>
  <li>🔴 <b>LINK LOST</b> — Communication failure</li>
</ul>

<p>
When the API becomes unavailable, the dashboard automatically indicates the connection failure and continues attempting synchronization.
</p>

---

<h2>🎨 Visual Effects</h2>

<p>
The interface recreates the appearance of a classic CRT computer terminal.
</p>

<ul>
  <li>🟢 Monospaced typography</li>
  <li>📺 CRT scanlines</li>
  <li>✨ Phosphor glow</li>
  <li>📺 Visual noise</li>
  <li>⚡ Glitch effects</li>
  <li>▌ Blinking indicators</li>
</ul>

---

<h2>🚀 How to Use</h2>

<ol>
  <li>Clone or download the repository</li>
  <li>Open <b>index.html</b></li>
  <li>Configure the API endpoint in the JavaScript section</li>
  <li>Make sure the monitoring API is available</li>
  <li>Open the dashboard in a web browser</li>
</ol>

<p>
The dashboard requires no frontend framework or additional web server.
</p>

---

<h2>🖥 Quick Launch</h2>

<p>
The <b>web.bat</b> file provides a quick way to launch the dashboard directly in Microsoft Edge using Kiosk Mode.
</p>

<pre>
@echo off
start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --app="http://server:8181/monitor" --kiosk
</pre>

<p>
Double-clicking the batch file opens the SEVASTOLINK dashboard without the standard browser interface.
</p>

<p>
The URL can be changed directly in the <b>web.bat</b> file when necessary.
</p>

---

<h2>🖥 Windows Screen Saver</h2>

<p>
The SEVASTOLINK dashboard can also be used as a Windows screen saver.
</p>

<p>
The <b>SEVASTOLINK Screen Saver</b> uses <b>AutoHotkey v2</b> to launch the dashboard in fullscreen Kiosk Mode and monitor keyboard and mouse activity.
</p>

<p>
When user interaction is detected, the Edge Kiosk process is closed and the screen saver exits.
</p>

<p>
The screen saver is available in the <b>ScreenSaver</b> folder: <a href="./ScreenSaver/"><b>SEVASTOLINK Screen Saver</b></a>
</p>

---

<h2>⚙️ Configuration</h2>

<p>
The dashboard URL and synchronization interval can be configured directly in <b>index.html</b>.
</p>

<pre>
const API_URL = "http://server:8181/api/monitor";
const POLL_MS = 2000;
</pre>

<p>
The URL used by the <b>web.bat</b> and <b>Sevastolink.ahk</b> files should point to the same SEVASTOLINK dashboard address.
</p>

---

<h2>🛠 Technologies</h2>

<ul>
  <li>HTML5</li>
  <li>CSS3</li>
  <li>JavaScript</li>
  <li>Fetch API</li>
  <li>HTTP API</li>
  <li>CSS Transforms</li>
  <li>Batch Script</li>
  <li>AutoHotkey v2</li>
  <li>Microsoft Edge Kiosk Mode</li>
</ul>

---

## 📸 Preview

<p align="center">
<img width="495" height="372" alt="SEVASTOLINK CRT Dashboard" src="https://github.com/user-attachments/assets/d1a3aa7a-34ab-4e60-a001-0a5dd36b79cc" />
</p>

---

<p align="center">
<b>SEVASTOLINK CRT Dashboard</b> combines real-time server telemetry, automatic resource indicators and a retrofuturistic CRT interface inspired by the computer systems of <b>Alien: Isolation</b>. 🖥
</p>
