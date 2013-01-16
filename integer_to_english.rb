class Integer
  def to_eng
    eng_ones = %w(0
      one
      two
      three
      four
      five
      six
      seven
      eight
      nine
      ten
      eleven
      twelve
      thirteen
      fourteen
      fifteen
      sixteen
      seventeen
      eighteen
      nineteen
    )
    eng_tens = %w(0 1
      twenty
      thirty
      forty
      fifty
      sixty
      seventy
      eighty
      ninety
    )
    eng_bigs = [
      [ 10**3,   'thousand'               ],
      [ 10**6,   'million'                ],
      [ 10**9,   'billion'                ],
      [ 10**12,  'trillion'               ],
      [ 10**15,  'quadrillion'            ],
      [ 10**18,  'quintillion'            ],
      [ 10**21,  'sextillion'             ],
      [ 10**24,  'septillion'             ],
      [ 10**27,  'octillion'              ],
      [ 10**30,  'nonillion'              ],
      [ 10**33,  'decillion'              ],
      [ 10**36,  'undecillion'            ],
      [ 10**39,  'duodecillion'           ],
      [ 10**42,  'tredecillion'           ],
      [ 10**45,  'quatuordecillion'       ],
      [ 10**48,  'quindecillion'          ],
      [ 10**51,  'sexdecillion'           ],
      [ 10**54,  'septendecillion'        ],
      [ 10**57,  'octodecillion'          ],
      [ 10**60,  'novemdecillion'         ],
      [ 10**63,  'vigintillion'           ],
      [ 10**66,  'unvigintillion'         ],
      [ 10**69,  'duovigintillion'        ],
      [ 10**72,  'trevigintillion'        ],
      [ 10**75,  'quatuorvigintillion'    ],
      [ 10**93,  'trigintillion'          ],
      [ 10**120, 'novemtrigintillion'     ],
      [ 10**123, 'quadragintillion'       ],
      [ 10**153, 'quinquagintillion'      ],
      [ 10**180, 'novemquinquagintillion' ],
      [ 10**183, 'sexagintillion'         ],
      [ 10**213, 'septuagintillion'       ],
      [ 10**240, 'novemseptuagintillion'  ],
      [ 10**243, 'octogintillion'         ],
      [ 10**273, 'nonagintillion'         ],
      [ 10**300, 'novemnonagintillion'    ],
      [ 10**303, 'centillion'             ]
    ]
    number = self
    case
    when number == 0
      return 'zero'
    when number < 0
      number *= -1
      return 'negative ' + number.to_eng
    when number < 20
      return eng_ones[number]
    when number < 100
      tens = number / 10
      number -= tens * 10
      return eng_tens[tens] + ( number > 0 ? '-' + number.to_eng : '' )
    when number < 1_000
      hundreds = number / 100
      number -= hundreds * 100
      return eng_ones[hundreds] + ' hundred' + ( number > 0 ? ' ' + number.to_eng : '' )
    else
      eng_bigs.each_index do |dex|
        if eng_bigs[dex+1].nil? or number < ( eng_bigs[dex+1][0] )
          bigs = number / eng_bigs[dex][0]
          number -= bigs * eng_bigs[dex][0]
          return bigs.to_eng + ' ' + eng_bigs[dex][1] + ( number > 0 ? ', ' + number.to_eng : '' )
        end
      end
    end#case
  end#def
end#class