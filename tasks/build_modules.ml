---

- name: "install modules dependencies"
  package:
    name: "{{item}}"
    state: present
  with_items:
    - "{{symantec_av_module_dependencies}}"

- name: "executing uninstall script"
  command: "{{symantec_av_tmpdir}}/install.sh -u"
  register: symantec_av_output

- name: "re-executing install script"
  command: "{{symantec_av_tmpdir}}/install.sh -i"
  register: symantec_av_output

- debug:
    msg: "{{ symantec_av_output.stdout_lines}}"


- include_tasks: sav_tests.yml
