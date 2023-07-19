local wk = require('which-key')
require('which-key').setup({
    wk.register({
        y = {
            name = '+yank',
            S = {
                name = 'Surround on a new line',
                i = {
                    name = 'inner',
                    w = {
                        name = 'word',
                        t = {
                            name = 'tag',
                        },
                    },
                },
                s = {
                    name = 'single line',
                    t = {
                        name = 'tag',
                    },
                },
                w = {
                    name = 'next word',
                    t = {
                        name = 'tag',
                    },
                },
            },
            s = {
                name = 'Surround',
                i = {
                    name = 'inner',
                    w = {
                        name = 'word',
                        t = {
                            name = 'tag',
                        },
                    },
                },
                s = {
                    name = 'single line',
                    t = {
                        name = 'tag',
                    },
                },
                w = {
                    name = 'next word',
                    t = {
                        name = 'tag',
                    },
                },
            },
        },
        c = {
            name = '+Change',
            s = {
                name = 'Surround',
                t = {
                    name = 'Tag',
                },
            },
            S = {
                name = 'Surround on a new line',
                t = {
                    name = 'Tag',
                },
            },
        },
        d = {
            name = '+Delete',
            s = {
                name = 'Surround',
                t = {
                    name = 'Tag',
                },
            },
            S = {
                name = 'Surround on a new line',
                t = {
                    name = 'Tag',
                },
            },
        },
    })
})
