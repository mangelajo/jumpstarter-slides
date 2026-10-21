---
layout: center
class: text-center
---

# Demo

<div class="text-6xl mt-8 animate-pulse">

⚡

</div>

---
layout: default
---

# Jumpstarter Shell

<div class="grid grid-cols-[1fr,1fr] gap-6">

<div>

```bash
$ jmp shell -l board=rcar-s4

⚡remote ➤ echo $JUMPSTARTER_HOST
/tmp/jumpstarter-nertk0nz/socket

⚡remote ➤ j
Usage: j [OPTIONS] COMMAND [ARGS]...
Composite exporter interface
Commands:
  storage   Flash the remote target eMMC
  power     Generic power interface
  serial    Serial port client

⚡remote ➤ j storage flash rcar4/target.gz
⚡remote ➤ j power on
⚡remote ➤ j serial start-console
⚡remote ➤ exit
```

</div>

<div class="text-sm mt-4 space-y-4">

<v-clicks>

- We use **label selectors** like Kubernetes to locate hardware.
- Jumpstarter creates a **local socket** to connect between the CLI and the Jumpstarter client.
- We can execute `j` commands to **interact with the hardware**.
- This is a **local shell** -- not SSH!

</v-clicks>

</div>

</div>
