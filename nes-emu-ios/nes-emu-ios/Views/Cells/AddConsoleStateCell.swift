//
//  AddConsoleStateCell.swift
//  nes-emu-ios
//
//  Created by Tom Salvo on 10/11/20.
//  Copyright © 2020 Tom Salvo.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import UIKit

final class AddConsoleStateCell: UITableViewCell
{

    // MARK: - UI Outlets
    
    @IBOutlet weak private var saveStateLabel: UILabel!
    
    // MARK: - Class Variables
    
    class var reuseIdentifier: String { return String(describing: self) }
    
    // MARK: - Public Variables
    
    var saveStateText: String?
    {
        didSet
        {
            self.saveStateLabel.text = saveStateText ?? ""
        }
    }

    override func awakeFromNib()
    {
        super.awakeFromNib()
        self.backgroundColor = .clear
        self.backgroundView?.backgroundColor = .clear
        self.setupUI()
    }
    
    // MARK: - Private Functions
    
    private func setupUI()
    {
        self.saveStateLabel.textColor = UIColor.label
    }
    
    
}
