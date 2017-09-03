package htmlparser;

import htmlparser.HtmlAttribute;
import htmlparser.HtmlNodeElement;

class XmlParser extends HtmlParser
{
	public static function run(str:String) : Array<HtmlNode> return new XmlParser().parse(str);
	
	override function isSelfClosingTag(tag:String) return false;
	
	override function newElement(name:String, attributes:Array<HtmlAttribute>) return new XmlNodeElement(name, attributes);
}