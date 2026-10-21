---
layout: two-cols
layoutClass: gap-8
---

# What is Hardware-in-the-Loop?

Hardware-in-the-Loop (HiL) is a testing method where physical hardware components interact with a simulated environment to validate embedded systems under realistic operating conditions.

<div class="mt-6">

**HiL testing is common in industries such as:**

- 🚘 Automotive
- 🤖 Robotics
- 🚀 Aerospace

</div>

::right::

<div class="flex items-center justify-center h-full">
  <img src="/images/hil-illustration.png" class="max-h-80" />
</div>

---
layout: default
---

# Challenges in the HiL Landscape

<div class="grid grid-cols-2 gap-x-12 gap-y-4 mt-6 text-sm">

<div class="border-l-3 border-red-400 pl-4">
  <h3 class="font-bold text-red-400">Proprietary Toolchains</h3>
  <p class="opacity-75">Closed-source, expensive platforms limit developer access.</p>
</div>

<div class="border-l-3 border-green-400 pl-4">
  <h3 class="font-bold text-green-400">Open Tooling</h3>
  <p class="opacity-75">Open source software to reduce cost and vendor lock-in.</p>
</div>

<div class="border-l-3 border-red-400 pl-4">
  <h3 class="font-bold text-red-400">Cost vs. Criticality Gap</h3>
  <p class="opacity-75">Testing tools priced for safety-critical systems are often overkill for infotainment or IoT devices.</p>
</div>

<div class="border-l-3 border-green-400 pl-4">
  <h3 class="font-bold text-green-400">Scalable Criticality</h3>
  <p class="opacity-75">Provide support for different criticalities through integrations with existing tools.</p>
</div>

<div class="border-l-3 border-red-400 pl-4">
  <h3 class="font-bold text-red-400">Hardware Access</h3>
  <p class="opacity-75">Shared labs, local devices, and virtual devices often have inconsistent access methods.</p>
</div>

<div class="border-l-3 border-green-400 pl-4">
  <h3 class="font-bold text-green-400">Isomorphic Interfaces</h3>
  <p class="opacity-75">Provide a unified hardware access interface for local, remote, and virtual hardware.</p>
</div>

<div class="border-l-3 border-red-400 pl-4">
  <h3 class="font-bold text-red-400">CI/CD Misalignment</h3>
  <p class="opacity-75">Most hardware testing tools don't integrate cleanly into modern DevOps workflows.</p>
</div>

<div class="border-l-3 border-green-400 pl-4">
  <h3 class="font-bold text-green-400">Declarative Configs</h3>
  <p class="opacity-75">Use existing DevOps technologies such as OIDC, RBAC, and GitOps.</p>
</div>

</div>
