<<<<<<< HEAD
sudo apt update
sudo apt upgrade
sudo apt 

cd ~

=======
#!/bin/bash
# This script is not ready
# Directory where your dotfiles are located
DOTFILES_DIR="$HOME/.dotfiles"

# Backup directory for old dotfiles
BACKUP_DIR="$HOME/.dotfiles_old"

# Create the backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# List of files to link (add or remove as necessary)
FILES=(
    ".vimrc"
    ".zshrc"
    ".tmux.conf"
)

# Create symbolic links for individual files
for FILE in "${FILES[@]}"; do
    # Check if the file exists in the dotfiles directory
    if [ -e "$DOTFILES_DIR/$FILE" ]; then
        # Create the directory if it doesn't exist
        mkdir -p "$(dirname "$HOME/$FILE")"
        
        # Move existing file or link to backup directory
        if [ -e "$HOME/$FILE" ]; then
            echo "Moving existing $HOME/$FILE to $BACKUP_DIR"
            mv "$HOME/$FILE" "$BACKUP_DIR/"
        fi
        
        # Create the symbolic link
        echo "Creating symlink for $FILE"
        ln -s "$DOTFILES_DIR/$FILE" "$HOME/$FILE"
    else
        echo "Warning: $DOTFILES_DIR/$FILE does not exist."
    fi
done

# Link the entire nvim configuration directory
NVIM_DIR="$DOTFILES_DIR/.config/nvim"
TARGET_NVIM_DIR="$HOME/.config/nvim"

# Create the symbolic link for the entire nvim directory
if [ -d "$NVIM_DIR" ]; then
    echo "Linking nvim configuration directory from $NVIM_DIR to $TARGET_NVIM_DIR"
    
    # Move existing nvim directory or link to the backup directory
    if [ -e "$TARGET_NVIM_DIR" ]; then
        echo "Moving existing $TARGET_NVIM_DIR to $BACKUP_DIR"
        mv "$TARGET_NVIM_DIR" "$BACKUP_DIR/"
    fi
    
    # Create the symbolic link for the directory
    ln -s "$NVIM_DIR" "$TARGET_NVIM_DIR"
else
    echo "Warning: $NVIM_DIR does not exist."
fi

echo "Symbolic links created successfully!"
>>>>>>> 4d850c565ccf33ae0bc3adb51f5c383d642c45cd
