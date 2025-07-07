# 📝 Dualboot Fix Summary (Steps 1–4)

## ✅ 1. Find EFI Partitions
Open PowerShell (Admin):  
```
Get-Partition | Where-Object { $_.GptType -eq '{c12a7328-f81f-11d2-ba4b-00a0c93ec93b}' }
```

Result:
- Disk 0 Partition 1 → 150 MB (Windows EFI)
- Disk 1 Partition 1 → 512 MB (Debian EFI)

---

## ✅ 2. Assign Drive Letters (Diskpart)
### Mount Disk 0 EFI (Windows)
```
diskpart
select disk 0
select partition 1
assign letter=S
exit
```

### Mount Disk 1 EFI (Debian)
```
diskpart
select disk 1
select partition 1
assign letter=T
exit
```

---

## ✅ 3. Check Contents
### Windows EFI
```
dir S:\EFI\
```
Result:
```
Microsoft
Boot
Dell
```

### Debian EFI
```
dir T:\EFI\
```
Result:
```
debian
Dell
```

### Check Debian Folder
```
dir T:\EFI\debian\
```
Result:
```
shimx64.efi
grubx64.efi
grub.cfg
fwupdx64.efi
```

---

## ✅ 4. Create Fallback Bootloader
Create missing Boot folder:
```
mkdir T:\EFI\Boot
```

Copy shimx64.efi as fallback:
```
copy T:\EFI\debian\shimx64.efi T:\EFI\Boot\bootx64.efi
```

