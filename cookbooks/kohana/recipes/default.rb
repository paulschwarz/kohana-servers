# For some reason, a fresh copy of my VM has issues booting up until this runs
execute "initial-sudo-apt-get-update" do
  command "apt-get update"
end

package "curl"
package "vim"
package "emacs"
package "git-core"