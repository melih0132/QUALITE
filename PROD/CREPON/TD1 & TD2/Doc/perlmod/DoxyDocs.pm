$doxydocs=
{
  classes => [
    {
      name => 'Application',
      kind => 'class',
      derived => [
        {
          name => 'App',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Calculatrice::Calcul',
      kind => 'class',
      inner => [
      ],
      all_members => [
        {
          name => 'Addition',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Calculatrice::Calcul'
        },
        {
          name => 'Division',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Calculatrice::Calcul'
        },
        {
          name => 'Factorielle',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Calculatrice::Calcul'
        },
        {
          name => 'Multiplication',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Calculatrice::Calcul'
        },
        {
          name => 'Soustraction',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Calculatrice::Calcul'
        }
      ],
      public_static_methods => {
        members => [
          {
            kind => 'function',
            name => 'Addition',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Additionne deux nombres. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'a'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Premier nombre.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'b'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'Deuxième nombre.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'La somme de '
                    },
                    {
                      type => 'style',
                      style => 'italic',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'a'
                    },
                    {
                      type => 'style',
                      style => 'italic',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '  et '
                    },
                    {
                      type => 'style',
                      style => 'italic',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'b'
                    },
                    {
                      type => 'style',
                      style => 'italic',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' .'
                    }
                  ]
                }
              ]
            },
            type => 'static double',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'a',
                type => 'double'
              },
              {
                declaration_name => 'b',
                type => 'double'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Division',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Divise le premier nombre par le deuxième. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'a'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Numérateur.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'b'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'Dénominateur (ne doit pas être égal à 0).'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Le quotient de '
                    },
                    {
                      type => 'style',
                      style => 'italic',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'a'
                    },
                    {
                      type => 'style',
                      style => 'italic',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '  et '
                    },
                    {
                      type => 'style',
                      style => 'italic',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'b'
                    },
                    {
                      type => 'style',
                      style => 'italic',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' .'
                    }
                  ]
                },
                {
                  exceptions => [
                    {
                      parameters => [
                        {
                          name => 'DivideByZeroException'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Lance une exception si '
                        },
                        {
                          type => 'style',
                          style => 'italic',
                          enable => 'yes'
                        },
                        {
                          type => 'text',
                          content => 'b'
                        },
                        {
                          type => 'style',
                          style => 'italic',
                          enable => 'no'
                        },
                        {
                          type => 'text',
                          content => '  est égal à 0.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'static double',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'a',
                type => 'double'
              },
              {
                declaration_name => 'b',
                type => 'double'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Factorielle',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Calcule la factorielle d\'un nombre entier non négatif. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'a'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Nombre entier non négatif.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'La factorielle de '
                    },
                    {
                      type => 'style',
                      style => 'italic',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'a'
                    },
                    {
                      type => 'style',
                      style => 'italic',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' .'
                    }
                  ]
                },
                {
                  exceptions => [
                    {
                      parameters => [
                        {
                          name => 'ArgumentException'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Lance une exception si '
                        },
                        {
                          type => 'style',
                          style => 'italic',
                          enable => 'yes'
                        },
                        {
                          type => 'text',
                          content => 'a'
                        },
                        {
                          type => 'style',
                          style => 'italic',
                          enable => 'no'
                        },
                        {
                          type => 'text',
                          content => '  est négatif ou non entier.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'static double',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'a',
                type => 'double'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Multiplication',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Multiplie deux nombres. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'a'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Premier nombre.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'b'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'Deuxième nombre.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Le produit de '
                    },
                    {
                      type => 'style',
                      style => 'italic',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'a'
                    },
                    {
                      type => 'style',
                      style => 'italic',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '  et '
                    },
                    {
                      type => 'style',
                      style => 'italic',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'b'
                    },
                    {
                      type => 'style',
                      style => 'italic',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' .'
                    }
                  ]
                }
              ]
            },
            type => 'static double',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'a',
                type => 'double'
              },
              {
                declaration_name => 'b',
                type => 'double'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Soustraction',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Soustrait le deuxième nombre du premier. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'a'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Premier nombre.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'b'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'Deuxième nombre.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'La différence entre '
                    },
                    {
                      type => 'style',
                      style => 'italic',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'a'
                    },
                    {
                      type => 'style',
                      style => 'italic',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '  et '
                    },
                    {
                      type => 'style',
                      style => 'italic',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'b'
                    },
                    {
                      type => 'style',
                      style => 'italic',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' .'
                    }
                  ]
                }
              ]
            },
            type => 'static double',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'a',
                type => 'double'
              },
              {
                declaration_name => 'b',
                type => 'double'
              }
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Classe qui gère toutes les opérations arithmétiques de la calculatrice. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'INotifyPropertyChanged',
      kind => 'class',
      derived => [
        {
          name => 'MainWindow',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Windows::Application',
      kind => 'class',
      derived => [
        {
          name => 'App',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'App',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Windows::Markup::IComponentConnector',
      kind => 'class',
      derived => [
        {
          name => 'MainWindow',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'MainWindow',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Windows::Window',
      kind => 'class',
      derived => [
        {
          name => 'MainWindow',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'MainWindow',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Window',
      kind => 'class',
      derived => [
        {
          name => 'MainWindow',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice::App',
      kind => 'class',
      base => [
        {
          name => 'Application',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'Application',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'Application',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
        {
          name => 'InitializeComponent',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'WpfCalculatrice::App'
        },
        {
          name => 'InitializeComponent',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'WpfCalculatrice::App'
        },
        {
          name => 'Main',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'WpfCalculatrice::App'
        },
        {
          name => 'Main',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'WpfCalculatrice::App'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'InitializeComponent',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'InitializeComponent. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'InitializeComponent',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'InitializeComponent. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      public_static_methods => {
        members => [
          {
            kind => 'function',
            name => 'Main',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Application Entry Point. '
                }
              ]
            },
            detailed => {},
            type => 'static void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Main',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Application Entry Point. '
                }
              ]
            },
            detailed => {},
            type => 'static void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Interaction logic for App.xaml. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'url',
            link => 'class_wpf_calculatrice_1_1_app',
            content => 'App'
          },
          {
            type => 'text',
            content => '. '
          }
        ]
      }
    },
    {
      name => 'WpfCalculatrice::MainWindow',
      kind => 'class',
      base => [
        {
          name => 'Window',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'INotifyPropertyChanged',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'Window',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'IComponentConnector',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'Window',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'IComponentConnector',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
        {
          name => '_contentLoaded',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'WpfCalculatrice::MainWindow'
        },
        {
          name => 'butDivise',
          virtualness => 'non_virtual',
          protection => 'package',
          scope => 'WpfCalculatrice::MainWindow'
        },
        {
          name => 'butDivise_Click',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'WpfCalculatrice::MainWindow'
        },
        {
          name => 'butFact',
          virtualness => 'non_virtual',
          protection => 'package',
          scope => 'WpfCalculatrice::MainWindow'
        },
        {
          name => 'butFact_Click',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'WpfCalculatrice::MainWindow'
        },
        {
          name => 'butMoins',
          virtualness => 'non_virtual',
          protection => 'package',
          scope => 'WpfCalculatrice::MainWindow'
        },
        {
          name => 'butMoins_Click',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'WpfCalculatrice::MainWindow'
        },
        {
          name => 'butMultiplie',
          virtualness => 'non_virtual',
          protection => 'package',
          scope => 'WpfCalculatrice::MainWindow'
        },
        {
          name => 'butMultiplie_Click',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'WpfCalculatrice::MainWindow'
        },
        {
          name => 'butPlus',
          virtualness => 'non_virtual',
          protection => 'package',
          scope => 'WpfCalculatrice::MainWindow'
        },
        {
          name => 'butPlus_Click',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'WpfCalculatrice::MainWindow'
        },
        {
          name => 'Connect',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'WpfCalculatrice::MainWindow'
        },
        {
          name => 'Connect',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'WpfCalculatrice::MainWindow'
        },
        {
          name => 'InitializeComponent',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'WpfCalculatrice::MainWindow'
        },
        {
          name => 'InitializeComponent',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'WpfCalculatrice::MainWindow'
        },
        {
          name => 'MainWindow',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'WpfCalculatrice::MainWindow'
        },
        {
          name => 'Nb1',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'WpfCalculatrice::MainWindow'
        },
        {
          name => 'Nb2',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'WpfCalculatrice::MainWindow'
        },
        {
          name => 'OnPropertyChanged',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'WpfCalculatrice::MainWindow'
        },
        {
          name => 'PropertyChanged',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'WpfCalculatrice::MainWindow'
        },
        {
          name => 'Resultat',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'WpfCalculatrice::MainWindow'
        },
        {
          name => 'resultat',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'WpfCalculatrice::MainWindow'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'MainWindow',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Initialise une nouvelle instance de la classe '
                },
                {
                  type => 'url',
                  link => 'class_wpf_calculatrice_1_1_main_window',
                  content => 'MainWindow'
                },
                {
                  type => 'text',
                  content => '. '
                }
              ]
            },
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'InitializeComponent',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'InitializeComponent. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'InitializeComponent',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'InitializeComponent. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      properties => {
        members => [
          {
            kind => 'property',
            name => 'Nb1',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'double'
          },
          {
            kind => 'property',
            name => 'Nb2',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'double'
          },
          {
            kind => 'property',
            name => 'Resultat',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Obtient ou dÃ©finit le rÃ©sultat de l\'opÃ©ration. '
                }
              ]
            },
            detailed => {},
            type => 'double'
          }
        ]
      },
      protected_methods => {
        members => [
          {
            kind => 'function',
            name => 'OnPropertyChanged',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Notifie les abonnÃ©s qu\'une propriÃ©tÃ© a changÃ©. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'name'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Le nom de la propriÃ©tÃ© qui a changÃ©.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'name',
                type => 'string'
              }
            ]
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'butDivise_Click',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'GÃ¨re l\'Ã©vÃ©nement de clic pour l\'opÃ©ration de division. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'sender',
                type => 'object'
              },
              {
                declaration_name => 'e',
                type => 'RoutedEventArgs'
              }
            ]
          },
          {
            kind => 'function',
            name => 'butFact_Click',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'GÃ¨re l\'Ã©vÃ©nement de clic pour l\'opÃ©ration de factorielle. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'sender',
                type => 'object'
              },
              {
                declaration_name => 'e',
                type => 'RoutedEventArgs'
              }
            ]
          },
          {
            kind => 'function',
            name => 'butMoins_Click',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'GÃ¨re l\'Ã©vÃ©nement de clic pour l\'opÃ©ration de soustraction. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'sender',
                type => 'object'
              },
              {
                declaration_name => 'e',
                type => 'RoutedEventArgs'
              }
            ]
          },
          {
            kind => 'function',
            name => 'butMultiplie_Click',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'GÃ¨re l\'Ã©vÃ©nement de clic pour l\'opÃ©ration de multiplication. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'sender',
                type => 'object'
              },
              {
                declaration_name => 'e',
                type => 'RoutedEventArgs'
              }
            ]
          },
          {
            kind => 'function',
            name => 'butPlus_Click',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'GÃ¨re l\'Ã©vÃ©nement de clic pour l\'opÃ©ration d\'addition. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'sender',
                type => 'object'
              },
              {
                declaration_name => 'e',
                type => 'RoutedEventArgs'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Connect',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void System.Windows.Markup.IComponentConnector.',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'connectionId',
                type => 'int'
              },
              {
                declaration_name => 'target',
                type => 'object'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Connect',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void System.Windows.Markup.IComponentConnector.',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'connectionId',
                type => 'int'
              },
              {
                declaration_name => 'target',
                type => 'object'
              }
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => '_contentLoaded',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool'
          },
          {
            kind => 'variable',
            name => 'resultat',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'double'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Logique d\'interaction pour la fenÃªtre principale de l\'application. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'url',
            link => 'class_wpf_calculatrice_1_1_main_window',
            content => 'MainWindow'
          },
          {
            type => 'text',
            content => '. '
          }
        ]
      }
    }
  ],
  concepts => [
  ],
  modules => [
  ],
  namespaces => [
    {
      name => 'Calculatrice',
      classes => [
        {
          name => 'Calculatrice::Calcul'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'global::System',
      brief => {},
      detailed => {}
    },
    {
      name => 'global::System::Collections::Generic',
      brief => {},
      detailed => {}
    },
    {
      name => 'global::System::Linq',
      brief => {},
      detailed => {}
    },
    {
      name => 'global::System::Threading',
      brief => {},
      detailed => {}
    },
    {
      name => 'global::System::Threading::Tasks',
      brief => {},
      detailed => {}
    },
    {
      name => 'System',
      namespaces => [
        {
          name => 'System::Windows'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'System::ComponentModel',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Configuration',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Data',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Diagnostics',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Reflection',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Windows',
      namespaces => [
        {
          name => 'System::Windows::Markup'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Windows::Automation',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Windows::Controls',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Windows::Controls::Primitives',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Windows::Controls::Ribbon',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Windows::Data',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Windows::Documents',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Windows::Ink',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Windows::Input',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Windows::Markup',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Windows::Media',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Windows::Media::Animation',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Windows::Media::Effects',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Windows::Media::Imaging',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Windows::Media::Media3D',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Windows::Media::TextFormatting',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Windows::Navigation',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Windows::Shapes',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Windows::Shell',
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice',
      classes => [
        {
          name => 'WpfCalculatrice::App'
        },
        {
          name => 'WpfCalculatrice::MainWindow'
        }
      ],
      brief => {},
      detailed => {}
    }
  ],
  files => [
    {
      name => 'Calcul.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => '.NETCoreApp,Version=v8.0.AssemblyAttributes.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => '.NETCoreApp,Version=v8.0.AssemblyAttributes.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Calculatrice.AssemblyInfo.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Calculatrice.GlobalUsings.g.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'App.xaml.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'AssemblyInfo.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'MainWindow.xaml.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'App.g.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'App.g.i.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'MainWindow.g.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'MainWindow.g.i.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice.AssemblyInfo.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice.GlobalUsings.g.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_0tw3k12j_wpftmp.AssemblyInfo.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_0tw3k12j_wpftmp.GlobalUsings.g.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_fcpc5uax_wpftmp.AssemblyInfo.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_fcpc5uax_wpftmp.GlobalUsings.g.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_jmv252zr_wpftmp.AssemblyInfo.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_jmv252zr_wpftmp.GlobalUsings.g.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_l2zcnusy_wpftmp.AssemblyInfo.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_l2zcnusy_wpftmp.GlobalUsings.g.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_mr03fwby_wpftmp.AssemblyInfo.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_mr03fwby_wpftmp.GlobalUsings.g.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_n4la44cd_wpftmp.AssemblyInfo.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_n4la44cd_wpftmp.GlobalUsings.g.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_nd1wtrup_wpftmp.AssemblyInfo.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_nd1wtrup_wpftmp.GlobalUsings.g.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_oobhidtv_wpftmp.AssemblyInfo.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_oobhidtv_wpftmp.GlobalUsings.g.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_rriwuwpt_wpftmp.AssemblyInfo.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_rriwuwpt_wpftmp.GlobalUsings.g.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_sptxptiu_wpftmp.AssemblyInfo.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_sptxptiu_wpftmp.GlobalUsings.g.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_uhxupbhu_wpftmp.AssemblyInfo.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_uhxupbhu_wpftmp.GlobalUsings.g.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_yvyotnlk_wpftmp.AssemblyInfo.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'WpfCalculatrice_yvyotnlk_wpftmp.GlobalUsings.g.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    }
  ],
  groups => [
  ],
  pages => [
  ]
};
1;
