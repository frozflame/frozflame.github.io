Boot ubuntu into CLI
====================

Replace *disable* with *enable* to boot with GUI again:

```shell
systemctl set-default multi-user.target --force
systemctl disable lightdm.service --force
systemctl disable graphical.target --force
systemctl disable plymouth.service --force
```

[ref](https://stackoverflow.com/a/31351291)