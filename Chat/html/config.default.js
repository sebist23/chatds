// Chat/html/config.default.js

window.CONFIG = {
    defaultTemplateId: 'default', // Default template for messages with two arguments
    defaultAltTemplateId: 'defaultAlt', // Default template for messages with one argument
    templates: { // Static templates for message formatting
        'default': '<b>{0}</b>: {1}',
        'defaultAlt': '{0}',
        'print': '<pre>{0}</pre>',
        'example:important': '<h1>^2{0}</h1>'
    },
    fadeTimeout: 5000, // Time in milliseconds before chat messages fade out
    suggestionLimit: 10, // Maximum number of command suggestions to display
    style: {
        background: 'rgba(0, 0, 0, 0.5)', // Background color of the chat window
        width: '40%', // Width of the chat window
        height: '25%', // Height of the chat window
    }
};
