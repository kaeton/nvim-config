##################################################
# git

set git_dirty_color red
set git_not_dirty_color green

function parse_git_branch
  set -l branch (git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/\1/')
  set -l git_diff (git diff)

  if test -n "$git_diff"
    echo (set_color $git_dirty_color)$branch(set_color normal)
  else
    echo (set_color $git_not_dirty_color)$branch(set_color normal)
  end
end

##################################################
# prompt

function fish_prompt
  if [ $status -eq 0 ]
    set status_face (set_color green)"><))):> 🐟  < "
  else
    set status_face (set_color blue)"><))):> 🍥  < "
  end

  set -l git_dir (git rev-parse --git-dir 3> /dev/null)
  set prompt (set_color yellow)(prompt_pwd)

  if test -n "$git_dir"
    echo $prompt [(parse_git_branch)]
    echo $status_face
  else
    echo $prompt
    echo $status_face
  end
end

function done_enter --on-event fish_postexec
    if test -z "$argv"
        ls
        if git rev-parse --is-inside-work-tree ^/dev/null
            echo (set_color yellow)"--- git status ---"(set_color normal)
            git status -sb
        end
    end
end

#peco
function fish_user_key_bindings
    bind \cr peco_select_history
end
