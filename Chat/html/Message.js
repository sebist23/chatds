Vue.component('message', {
  template: '#message_template',
  props: {
    templates: Object,
    multiline: Boolean,
    args: Array,
    color: Array,
    template: String,
    templateId: String
  },
  computed: {
    textEscaped() {
      let template = this.templates[this.templateId || 'default'];
      if (!template) {
        console.warn(`Template ${this.templateId} not found, using default.`);
        template = this.templates['default'];
      }
      return this.formatMessage(template, this.args);
    }
  },
  methods: {
    formatMessage(template, args) {
      return template.replace(/{(\d+)}/g, (match, number) => {
        return typeof args[number] != 'undefined'
          ? this.escapeHtml(args[number])
          : match;
      });
    },
    escapeHtml(text) {
      const map = {
        '&': '&amp;',
        '<': '&lt;',
        '>': '&gt;',
        '"': '&quot;',
        "'": '&#039;'
      };
      return text.replace(/[&<>"']/g, (m) => map[m]);
    }
  }
});
