#ctrl + [进入拷贝模式按v选择y拷贝p粘贴
bind p paste-buffer
bind-key -t vi-copy 'v' begin-selection
bind-key -t vi-copy 'y' copy-selection
bind-key -t vi-copy 'r' rectangle-toggle

# Use vim keybindings in copy mode
setw -g mode-keys vi

bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

bind L resize-pane -L 10  # 向左扩展
bind R resize-pane -R 10  # 向右扩展
bind K resize-pane -U 5   # 向上扩展
bind J resize-pane -D 5   # 向下扩展

bind '"' split-window -c '#{pane_current_path}'
bind '%' split-window -h -c '#{pane_current_path}'




