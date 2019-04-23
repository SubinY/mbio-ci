module.exports = {
  title: 'Subin Blog',
  description: '个人博客',
  base: '/mbio/',
  dest: './dist',
  themeConfig: {
    nav: [
      { text: '主页', link: '/' },
      { text: '博文',
        items: [
          { text: 'Android', link: '/android/' },
          { text: 'Web', link: '/web/' },
          { text: 'other', link: '/other/' }
        ]
      },
      { text: '关于', link: '/about/' },
      { text: 'Github', link: 'https://www.github.com/codeteenager' }
    ],
    sidebar: {
      '/android/': [
        '',
        'android1'
      ],
      '/ios/': [
        '',
        'ios1'
      ],
      '/other/': [
        '',
        'regular-regex'
      ]
    },
    sidebarDepth: 2,
    lastUpdated: 'Last Updated'
  }
}
