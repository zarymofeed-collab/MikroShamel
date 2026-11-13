# MikroShamel 4.56.44 — clean rebuild bootstrap

## Scope
This branch isolates rebuild work from `rebuild-4.56.44`. It does not replace the app's original implementation or claim to produce an APK until the original binary inputs are available.

## Verified repository layout
- `MikroShamel-4.56.44-rebuild-project/`: Kotlin overlays and Smali overlays (`c2`, `c4n`, `c5n`).
- `MikroShamel-4.56.44-build-env/`: apktool, smali/baksmali and Android Build Tools 35.0.0.
- Build recipe in the repository's historical report specifies JDK 21, Kotlin 2.1.0, Android 35 and a release keystore.

## Missing release-critical inputs
The checked-in source tree does not contain:
- `apktool-project/AndroidManifest.xml` and decoded resources.
- `base-dex/` (the untouched DEX payloads required by the recorded overlay build).
- `build.sh` (the historical report describes it, but it is absent from this branch).
- Release keystore and its password file (must remain outside Git).

These are not safe to invent. In particular, an empty Manifest or placeholder DEX can create an APK-shaped file but cannot recreate the app.

## Preflight
Run:

```bash
chmod +x preflight.sh
./preflight.sh
```

The script checks the known source overlays, build tools, decoded APK base, DEX base, build driver and signing inputs. It exits non-zero and does not produce an APK if a required input is absent.

## Next implementation steps
1. Recover the exact 4.56.44 base APK from the existing release distribution or the user's device (no upload to ChatGPT is required if the user runs the extraction locally).
2. Decode it with the pinned apktool version and extract its original DEX files into `base-dex/`.
3. Reconstruct the build driver from the recorded recipe and verify compiler/plugin/library versions.
4. Build all overlay DEX files, assemble resources and manifest, then sign using the original release keystore.
5. Verify package ID, version, DEX validity, APK signature and install/launch on a test device.

## Safety
Never commit APK signing keys, passwords, Supabase service-role keys, Telegram bot tokens or router credentials. Do not push a release artifact until the build and device tests pass.
