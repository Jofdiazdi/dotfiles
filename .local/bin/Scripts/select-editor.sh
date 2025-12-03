#!/bin/bash

# Function to let the user select an editor
select_editor() {
    echo "Select an editor:"
    echo "[1] nvim"
    echo "[2] code"
    echo "[3] antigravity"
    read -p "Enter number: " choice

    case $choice in
        1)
            EDITOR="nvim"
            ;;
        2)
            EDITOR="code ."
            ;;
        3)
            EDITOR="antigravity ."
            ;;
        *)
            echo "Invalid selection. Defaulting to nvim."
            EDITOR="nvim"
            ;;
    esac
    export EDITOR
}

# Call the function to select the editor
select_editor