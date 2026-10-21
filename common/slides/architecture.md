---
layout: default
---

# Architecture

<div class="flex justify-center mt-4">
  <img src="/images/architecture.png" class="max-h-96 rounded-lg" />
</div>

<div class="grid grid-cols-4 gap-4 mt-6 text-xs">

<div class="text-center">
  <span class="font-bold text-blue-400">Drivers</span><br/>
  Python packages that "export" interfaces
</div>

<div class="text-center">
  <span class="font-bold text-green-400">Clients</span><br/>
  Python packages that "consume" exported interfaces
</div>

<div class="text-center">
  <span class="font-bold text-purple-400">Exporters</span><br/>
  Processes that "export" hardware using drivers
</div>

<div class="text-center">
  <span class="font-bold text-amber-400">Leases</span><br/>
  Manage lifecycle by "leasing" exporters to clients
</div>

</div>

---
layout: default
---

# Types of Driver Calls

<div class="flex justify-center mt-8">
  <img src="/images/driver-calls.png" class="max-h-80 rounded-lg" />
</div>

<div class="grid grid-cols-3 gap-6 mt-6 text-sm text-center">

<div>
  <span class="font-bold text-green-400">Unary RPC</span><br/>
  <span class="opacity-70">Driver Call: desired state → result</span>
</div>

<div>
  <span class="font-bold text-blue-400">Server Streaming RPC</span><br/>
  <span class="opacity-70">Streaming Driver Call: interval → result stream</span>
</div>

<div>
  <span class="font-bold text-red-400">Bidirectional Streaming RPC</span><br/>
  <span class="opacity-70">Driver Stream: byte stream</span>
</div>

</div>

---
layout: default
---

# What Are the Benefits?

<div class="grid grid-cols-2 gap-8 mt-8">

<div class="p-5 rounded-xl bg-blue-500/10 border border-blue-500/20">
  <h3 class="font-bold text-lg mb-2">Support for more systems</h3>
  <p class="text-sm opacity-75">We support many boards and interfaces and are open to community contributions. Build proprietary drivers using the Jumpstarter Python framework.</p>
</div>

<div class="p-5 rounded-xl bg-green-500/10 border border-green-500/20">
  <h3 class="font-bold text-lg mb-2">Remote access without SSH</h3>
  <p class="text-sm opacity-75">Users can access remote hardware using secure gRPC tunnels instead of SSH.</p>
</div>

<div class="p-5 rounded-xl bg-purple-500/10 border border-purple-500/20">
  <h3 class="font-bold text-lg mb-2">Integration with CI tools</h3>
  <p class="text-sm opacity-75">Write tests in Python or shell scripts. Works with many existing CI systems without requiring local runners.</p>
</div>

<div class="p-5 rounded-xl bg-amber-500/10 border border-amber-500/20">
  <h3 class="font-bold text-lg mb-2">GitOps for hardware management</h3>
  <p class="text-sm opacity-75">You can use existing tools such as ArgoCD and flightctl for device management.</p>
</div>

</div>
