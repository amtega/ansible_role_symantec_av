---

- name: "check uninstall script"
  stat:
    path: "{{symantec_av_bin}}/install.sh"
  register: symantec_av_stat

- name: "executing uninstall script"
  command: "{{symantec_av_bin}}/install.sh -u"
  register: symantec_av_output
