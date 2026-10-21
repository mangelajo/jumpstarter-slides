---
layout: default
---

# Python Tests

```python
#!/bin/env python
import time
from jumpstarter.common.utils import env

with env() as client:
    client.storage.flash("image.img")
    client.power.on()
    while True:
        img = client.video.snapshot()
        img.save("video.jpg")
        time.sleep(0.2)
```

<div class="mt-4 opacity-70 text-sm">

Run with: `jmp shell -l board=rcar-s4 -- python example.py`

</div>

---
layout: default
---

# Pytest Example

```python
from jumpstarter.testing.pytest import JumpstarterTest
from jumpstarter_imagehash import ImageHash

class TestExample(JumpstarterTest):
    def test_boot_login(self, client):
        with client.serial.pexpect() as console:
            client.power.cycle()
            console.expect("login:", timeout=240)
            console.sendline("user")
            console.expect("Password:", timeout=30)
            console.sendline("password")

    def test_boot_image(self, client):
        hasher = ImageHash(client.video)
        hasher.assert_snapshot("expected.jpg")

    def test_devices_in_place(self, client):
        with client.serial.pexpect() as console:
            console.sendline("ls /dev/nv*")
            console.expect("/dev/nvhost-gpu")
```

---
layout: two-cols
layoutClass: gap-6
---

# Exporter Config

```yaml
apiVersion: jumpstarter.dev/v1alpha1
kind: ExporterConfig
metadata:
  name: exporter1
  namespace: jumpstarter-lab
endpoint: grpc.devel.jumpstarter.dev:443
token: ********************
export:
  storage:
    type: jumpstarter_driver_sdwire
          .driver.SDWire
    config:
      storage_device: "/dev/disk/..."
      serial: "e605c805"
  power:
    type: jumpstarter_driver_snmp
          .driver.SNMPServer
    config:
      server: my.snmp.server
      plug: 13
```

::right::

<div class="mt-12 text-sm space-y-4">

<v-clicks>

- **Versioned config API** for future improvements and backwards compatibility
- **Name and namespace** of the exporter, just local metadata
- **Endpoint** of Jumpstarter gRPC service and API token
- **SD Wire** storage multiplexer allows us to "swap" a SD card between the DUT and host
- **SNMP** networked power supply
- **PySerial** driver to connect to DUTLink test harness
- **UStreamer** driver to provide "live" video of DUT

</v-clicks>

</div>
