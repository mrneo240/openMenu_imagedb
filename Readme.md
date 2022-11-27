# Instructions

## Notes
- USA and PAL are considered complete and should not require updates
- All Homebrew belongs in `HB_input`, yes even commercially discs
- All things that aren't homebrew and aren't retail belong in `EX_input`. This includes things like prototypes, demo discs, propeller arena, etc...


## How to add an image
1. add your image with an appropriate name to the intended folder, image should be square of at least 512x512 or whatever highest resolution is available
    - `Doom (Ian).png` to for Ian Michael's doom port
1. in the `catalogues` folder, in the appropriate csv file add your image name with the Serial used in the IP.BIN of the disc image.
    - If no proper serial exists, e.g. `BOOTDREAMS` then feel free to make up an ID similar to `HB_IAN_DOOM`
    - Created ID's will be honored when making your openMenu gdi from [GDMENUCardManager](https://github.com/mrneo240/GDMENUCardManager/releases/) if you add `serial.txt` with the serial to the disc image folder
    - In this example the new line in `product_hb.csv` would appear as:
    ```
    Doom (Ian).pvr,HB_IAN_DOOM.pvr
    ```
- **Note**: when possible credit authors of the image in the PR you intend to submit