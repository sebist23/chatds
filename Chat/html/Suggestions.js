Vue.component('suggestions', {
  template: '#suggestions_template',
  props: {
    message: String,
    suggestions: Array
  },
  computed: {
    currentSuggestions() {
      if (!this.message.startsWith('/')) {
        return [];
      }

      const inputCommand = this.message.slice(1).toLowerCase();
      return this.suggestions
        .filter(suggestion => suggestion.name.toLowerCase().startsWith(inputCommand))
        .slice(0, CONFIG.suggestionLimit);
    }
  }
});
