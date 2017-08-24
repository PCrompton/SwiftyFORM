// MIT license. Copyright (c) 2017 SwiftyFORM. All rights reserved.
import UIKit
import SwiftyFORM

class StaticTextAndAttributedTextViewController: FormViewController {
	override func populate(_ builder: FormBuilder) {
		builder.navigationTitle = "Text"
		builder.toolbarMode = .none

		builder += SectionHeaderTitleFormItem(title: "Static Text")
		builder += StaticTextFormItem().title("Title 0").value("Value 0")
		builder += StaticTextFormItem().title("Title 1").value("Value 1")
		builder += StaticTextFormItem().title("Title 2").value("Value 2")

		builder += SectionHeaderTitleFormItem(title: "Attributed Text")
		builder += AttributedTextFormItem().title("Title 0").value("Value 0")
		builder += AttributedTextFormItem()
			.title("Title 1", [NSAttributedStringKey.foregroundColor: UIColor.gray as AnyObject])
			.value("Value 1", [
				NSAttributedStringKey.backgroundColor: UIColor.black as AnyObject,
				NSAttributedStringKey.foregroundColor: UIColor.white as AnyObject
				])
		builder += AttributedTextFormItem()
			.title("Orange 🍊", [
				NSAttributedStringKey.foregroundColor: UIColor.orange as AnyObject,
				NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 24) as AnyObject,
				NSAttributedStringKey.underlineStyle: NSUnderlineStyle.styleSingle.rawValue as AnyObject
				])
			.value("Heart ❤️", [NSAttributedStringKey.foregroundColor: UIColor.red as AnyObject])
	}
}
