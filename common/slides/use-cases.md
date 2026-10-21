---
layout: default
---

# How Can I Use This?

<div class="grid grid-cols-2 gap-12 mt-8">

<div>
  <h3 class="text-xl font-bold mb-4 text-blue-400">Local</h3>

```mermaid {scale: 0.8}
graph TD
    Dev[Developer] --> CLI[Jumpstarter CLI]
    CLI --> DUT[Device Under Test]
```

</div>

<div>
  <h3 class="text-xl font-bold mb-4 text-green-400">Distributed</h3>

```mermaid {scale: 0.7}
graph TD
    Dev[Developers] --> SVC[Jumpstarter Service]
    CI[CI/CD Pipelines] --> SVC
    SVC --> E1[Exporter]
    SVC --> E2[Exporter]
    SVC --> E3[Exporter]
    E1 --> D1[Device]
    E2 --> D2[Device]
    E3 --> D3[Device]
```

</div>

</div>

---
layout: default
---

# Example Use Cases

<div class="grid grid-cols-4 gap-4 mt-8 text-center text-sm">

<div class="p-4 rounded-lg bg-blue-500/10 border border-blue-500/20">
  <h3 class="font-bold mb-2">Local Dev</h3>
  <p class="opacity-70">Developer + CLI + QEMU</p>
</div>

<div class="p-4 rounded-lg bg-green-500/10 border border-green-500/20">
  <h3 class="font-bold mb-2">Remote Dev</h3>
  <p class="opacity-70">Developer + Service + Exporter + DUT</p>
</div>

<div class="p-4 rounded-lg bg-purple-500/10 border border-purple-500/20">
  <h3 class="font-bold mb-2">Remote CI</h3>
  <p class="opacity-70">CI Pipeline + Service + Exporter + DUT</p>
</div>

<div class="p-4 rounded-lg bg-amber-500/10 border border-amber-500/20">
  <h3 class="font-bold mb-2">Local CI</h3>
  <p class="opacity-70">CI Pipeline + Runner + DUT</p>
</div>

</div>

<div class="flex justify-center gap-6 mt-8">
  <img src="/images/raspberry-pi.png" class="h-36 rounded-lg" />
  <img src="/images/nvidia-jetson.png" class="h-36 rounded-lg" />
  <img src="/images/rcar-board.png" class="h-36 rounded-lg" />
</div>
