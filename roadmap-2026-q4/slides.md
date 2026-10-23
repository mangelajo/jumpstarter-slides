---
theme: default
title: Jumpstarter 2026 Q4 - 2027 Roadmap
info: |
  ## Jumpstarter Roadmap
  2026 Q4 - 2027 roadmap
transition: slide-left
mdc: true
---

<div class="absolute inset-0 bg-[#f0f0f0]" />

<div class="absolute top-[26%] left-14 z-10">
  <img src="/images/jumpstarter-logo.svg" class="h-20 w-auto" />
</div>

<div class="absolute bottom-0 left-0 right-0 h-[42%] bg-[#ffc107] z-10">
  <div class="px-14 pt-6">
    <p class="text-[2.2rem] font-semibold text-black leading-tight tracking-tight" style="font-family: sans-serif;">2026 Q4 - 2027 Roadmap</p>
    <p class="text-lg text-black mt-2" style="font-family: sans-serif;">Miguel Angel Ajo Pelayo <a class="underline" href="mailto:majopela@redhat.com">majopela@redhat.com</a></p>
  </div>
</div>

---
layout: default
---

# Two Years of Jumpstarter

<div class="grid grid-cols-3 gap-6 mt-8">

<div class="border-l-3 border-[#ffc107] pl-4">
  <h3 class="font-bold text-lg">2024 - Foundation</h3>
  <p class="text-sm opacity-75">Protocol, gRPC router and controller, Python driver model, the first drivers.</p>
</div>

<div class="border-l-3 border-[#ffc107] pl-4">
  <h3 class="font-bold text-lg">2025 - Hardening</h3>
  <p class="text-sm opacity-75">TLS, OIDC, cert-manager, lease edge cases, flashing robustness. The project meets its first real users.</p>
</div>

<div class="border-l-3 border-[#ffc107] pl-4">
  <h3 class="font-bold text-lg">2026 - Platform</h3>
  <p class="text-sm opacity-75">Enhancement process, an explicit roadmap, ExporterSets, observability, virtual targets at scale.</p>
</div>

</div>

<p class="text-base opacity-80 mt-8">~3,800 commits, 60+ driver packages, a bus factor that has moved from one person to roughly four.</p>

---
layout: default
---

# Drivers in 0.10.0 / main (today)

<div class="grid grid-cols-5 gap-4 mt-8 text-xs">

<div>
  <h3 class="font-bold text-sm mb-3">🚘 Auto</h3>
  <ul class="opacity-75 leading-snug list-disc list-inside">
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/can.html">CAN</a></li>
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/doip.html">DoIP</a></li>
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/uds.html">UDS (CAN/DoIP)</a></li>
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/someip.html">SOME/IP</a></li>
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/xcp.html">XCP</a></li>
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/obd.html">OBD-II</a></li>
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/dds.html">DDS</a></li>
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/ridesx.html">RideSX</a></li>
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/flashers.html">Flashers</a></li>
  </ul>
</div>

<div>
  <h3 class="font-bold text-sm mb-3">📱 Mobile</h3>
  <ul class="opacity-75 leading-snug list-disc list-inside">
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/adb.html">ADB</a></li>
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/cuttlefish.html">Cuttlefish</a></li>
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/androidemulator.html">Android emulator</a></li>
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/corellium.html">Corellium</a>(1)</li>
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/netsim.html">Netsim</a></li>
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/ble.html">BLE</a></li>
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/bt-peer.html">BT Peer</a></li>
  </ul>
</div>

<div>
  <h3 class="font-bold text-sm mb-3">🔌 MCU </h3>
  <ul class="opacity-75 leading-snug list-disc list-inside">
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/renode.html">Renode</a></li>
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/probe-rs.html">Probe-RS</a></li>
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/esp32.html">ESP32</a></li>
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/pi-pico.html">Pi Pico</a></li>
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/stlink-msd.html">ST-LINK MSD</a></li>
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/uboot.html">U-Boot</a></li>
  </ul>
</div>

<div>
  <h3 class="font-bold text-sm mb-3">☁️ Virtual </h3>
  <ul class="opacity-75 leading-snug list-disc list-inside">
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/qemu.html">QEMU</a></li>
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/kubevirt.html">KubeVirt</a></li>
    <li><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/vnc.html">VNC</a></li>
  </ul>
</div>

<div>
  <h3 class="font-bold text-sm mb-3">🔧 Bench</h3>
  <p class="opacity-75 leading-snug"><a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/power.html">Power</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/gpiod.html">gpiod</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/yepkit.html">Yepkit</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/dutlink.html">DUT Link</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/energenie.html">Energenie PDU</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/tasmota.html">Tasmota</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/http-power.html">HTTP Power</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/noyito-relay.html">Noyito Relay</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/opendal.html">OpenDAL</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/sdwire.html">SD Wire</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/iscsi.html">iSCSI</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/ustreamer.html">uStreamer</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/video.html">Video</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/nanokvm-usb.html">NanoKVM-USB</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/sigrok.html">Sigrok</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/shell.html">Shell</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/ssh-mount.html">SSH Mount</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/tmt.html">TMT</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/mitmproxy.html">mitmproxy</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/ssh.html">SSH</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/ssh-mitm.html">SSH MITM</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/dut-network.html">DUT Network</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/snmp.html">SNMP</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/tftp.html">TFTP</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/http.html">HTTP</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/network.html">Network</a> · <a class="no-underline border-0!" href="https://jumpstarter.dev/main/reference/package-apis/drivers/pyserial.html">PySerial</a></p>
</div>

</div>

<p class="text-xs opacity-50 mt-6">(1) experimental / needs work - 54 driver packages</p>

---
layout: default
---

# Virtual Targets

<div class="grid grid-cols-3 gap-x-8 gap-y-2 mt-4 text-xs">

<div class="border-l-3 border-[#ffc107] pl-4">
  <h3 class="font-bold text-sm">QEMU</h3>
  <p class="opacity-75">Full system emulation — Pod, KubeVirt and off-cluster (qemu-ssh) provisioners.</p>
</div>

<div class="border-l-3 border-[#ffc107] pl-4">
  <h3 class="font-bold text-sm">KubeVirt</h3>
  <p class="opacity-75">Virtual machines running in-cluster, pooled by ExporterSets.</p>
</div>

<div class="border-l-3 border-[#ffc107] pl-4">
  <h3 class="font-bold text-sm">Renode</h3>
  <p class="opacity-75">MCU simulation for bare-metal development and testing.</p>
</div>

<div class="border-l-3 border-[#ffc107] pl-4">
  <h3 class="font-bold text-sm">Cuttlefish</h3>
  <p class="opacity-75">Android virtual device — WebRTC display, flashing during a lease.</p>
</div>

<div class="border-l-3 border-[#ffc107] pl-4">
  <h3 class="font-bold text-sm">Corellium(1)</h3>
  <p class="opacity-75">Cloud iOS devices for app and driver testing.</p>
</div>

<div class="border-l-3 border-[#ffc107] pl-4">
  <h3 class="font-bold text-sm">Android emulator</h3>
  <p class="opacity-75">Standard AOSP emulator as a test target.</p>
</div>

<div class="border-l-3 border-[#ffc107] pl-4">
  <h3 class="font-bold text-sm">QNX / QVM</h3>
  <p class="opacity-75">Under development — QVM virtual machines running under QNX.</p>
</div>

</div>

<p class="text-xs opacity-50 mt-3">(1) experimental / needs work, iOS virtual targets under development</p>
---
layout: default
---

# 2026 Q4 - 2027 Roadmap

<div class="grid grid-cols-3 gap-6 mt-8">

<div class="border-l-3 border-[#ffc107] pl-4">
  <h3 class="font-bold text-lg">0.10 - Virtual targets, observability, UX</h3>
  <p class="text-xs opacity-50">target: mid-Nov 2026 — on <code>main</code></p>
  <ul class="text-sm opacity-75 mt-2 space-y-1 list-disc list-inside">
    <li><b>Virtual provisioners</b>: QEMU, QEMU-ssh, Cuttlefish, Kubevirt</li>
    <li><b>Telemetry service</b> — metrics and logs</li>
    <li><b>Lease sharing between clients</b></li>
    <li>Eight new driver packages</li>
    <li><code>jmp describe</code>/<code>apply</code>/<code>self update</code>, device-code login</li>
  </ul>
</div>

<div class="border-l-3 border-[#ffc107] pl-4">
  <h3 class="font-bold text-lg">0.11 - Multi-exporter leases and hardening</h3>
  <p class="text-xs opacity-50">target: mid-Feb 2027</p>
  <ul class="text-sm opacity-75 mt-2 space-y-1 list-disc list-inside">
    <li><b>Multi-exporter leases</b> (JEP-0015) — role-based, atomic claims</li>
    <li>Inter-exporter forwarding over mTLS</li>
    <li>Client->Exporter improved network path <a href="https://github.com/jumpstarter-dev/jumpstarter/issues/92">🔗</a></li>
    <li>Exporter lifecycle FSM</li>
    <li>Extended driver metrics</li>
    <li>Lease locking support: protecting flash scenarios</li>
    <li>Generic Fastboot driver</li>
  </ul>
</div>

<div class="border-l-3 border-[#ffc107] pl-4">
  <h3 class="font-bold text-lg">0.12 - Rust core and LeaseTemplates</h3>
  <p class="text-xs opacity-50">target: mid-May 2027</p>
  <ul class="text-sm opacity-75 mt-2 space-y-1 list-disc list-inside">
    <li>Single Rust engine for session, lease, transport and byte plane</li>
    <li>Opt-in Rust <code>jmp</code> CLI and exporter core</li>
    <li>LeaseTemplate support <a href="https://github.com/jumpstarter-dev/jumpstarter/issues/92">🔗</a></li>
    <!--<li><code>ExporterClass</code> contracts and typed generated clients</li>-->
    <li>jumpstarter-lab-config flightctl integration</li>
  </ul>
</div>

</div>

---
layout: default
---

# 2027+ Roadmap

<div class="grid grid-cols-3 gap-6 mt-8">

<div>
  <h3 class="font-bold text-base mb-4">Lab operations at scale</h3>

  <div class="border-l-3 border-[#ffc107] pl-4">
    <h4 class="font-bold text-sm">Productize <a class="no-underline border-0!" href="https://github.com/jumpstarter-dev/jumpstarter-lab-config">jumpstarter-lab-config</a></h4>
    <p class="text-sm opacity-75 mt-1"><a class="no-underline border-0!" href="https://flightctl.io">flightctl</a>/RHEM integration for exporter hosts, instead of only ssh management</p>
  </div>

  <div class="border-l-3 border-[#ffc107] pl-4 mt-4">
    <h4 class="font-bold text-sm">Lab monitoring / smoke testing</h4>
    <p class="text-sm opacity-75 mt-1">Internal POC in Red Hat — clean up and contribute as a generalization to Jumpstarter.</p>
  </div>
</div>

<div>
  <h3 class="font-bold text-base mb-4">Granular access control</h3>

  <div class="border-l-3 border-[#ffc107] pl-4">
    <h4 class="font-bold text-sm">Limiting driver access</h4>
    <p class="text-sm opacity-75 mt-1">User access to drivers can be limited by
    client attributes like labels: for example firmware flashing,
    exporter management, etc.</p>
  </div>

  <div class="border-l-3 border-[#ffc107] pl-4 mt-4">
    <h4 class="font-bold text-sm">Better MCP support</h4>
    <p class="text-sm opacity-75 mt-1">Including improved CLI usability: native ability to interact with serial consoles or streams in different ways.</p>
  </div>
</div>

<div>
  <h3 class="font-bold text-base mb-4">Visibility & UX</h3>

  <div class="border-l-3 border-[#ffc107] pl-4">
    <h4 class="font-bold text-sm">Web UI development</h4>
    <p class="text-sm opacity-75 mt-1">Administrators: metrics and exporter status. Users: leasing, flashing, viewing and interacting with devices.</p>
  </div>

  <div class="border-l-3 border-[#ffc107] pl-4 mt-4">
    <h4 class="font-bold text-sm">Extended metrics</h4>
    <ul class="text-[10px] opacity-75 mt-1 space-y-0.5 list-disc list-inside">
      <li>Lease wait times, queue depth, denied leases</li>
      <li>Utilization — overall vs active usage</li>
      <li>Per-client lease hours</li>
      <li>Flash metrics — throughput, top 10 flakiest boards</li>
      <li>Exporter host metrics — disk, CPU, network…</li>
      <li>Traceability — query made by agent or human?</li>
    </ul>
  </div>
</div>

</div>

---
layout: default
---

# 2027+ Roadmap (cont.)

<div class="grid grid-cols-3 gap-6 mt-8">

<div class="border-l-3 border-[#ffc107] pl-4">
  <h3 class="font-bold text-lg">Billing</h3>
  <p class="text-sm opacity-75 mt-2">Usage and cost accounting per team, building on the per-client lease hours metrics.</p>
</div>

<div class="border-l-3 border-[#ffc107] pl-4">
  <h3 class="font-bold text-lg">Quotas</h3>
  <p class="text-sm opacity-75 mt-2">Concurrency limits and idle-lease reclamation — shared systems stay effectively used, not left sitting leased over time.</p>
</div>

<div class="border-l-3 border-[#ffc107] pl-4">
  <h3 class="font-bold text-lg">Slack / platform integrations</h3>
  <p class="text-sm opacity-75 mt-2">Notifications to administrators and users: exporter broken or offline, lease idle, lease running for too long…</p>
</div>

</div>

---
src: ../common/slides/community.md
---
