#!/bin/bash
clone_if_missing() {
    local repo_url=$1
    local branch=$2
    local target_dir=$3
    if [ ! -d "$target_dir" ]; then
        echo "Cloning $target_dir..."
        if [ -n "$branch" ]; then
            git clone "$repo_url" -b "$branch" "$target_dir"
        else
            git clone "$repo_url" "$target_dir"
        fi
        if [ $? -eq 0 ]; then
            echo "Done."
        else
            echo "Failed to clone $target_dir"
        fi
    else
        echo "$target_dir already exists. Skipping."
    fi
}
# Git clones
clone_if_missing "https://github.com/JNWSG/android_device_motorola_mumba.git" "pixel" "device/motorola/mumba"
clone_if_missing "https://github.com/JNWSG/android_device_motorola_mumba-kernel.git" "" "device/motorola/mumba-kernel"
clone_if_missing "https://github.com/JNWSG/android_vendor_motorola_mumba.git" "lineage-23.2" "vendor/motorola/mumba"
# Additional repos
clone_if_missing "https://github.com/LineageOS/android_hardware_motorola.git" "lineage-23.2" "hardware/motorola"
