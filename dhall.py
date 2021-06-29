from itertools import chain

def dump(obj, f):
    f.write(to_dhall_expression_string(obj, False, "", "    "))


def quote(s):
    return "\"" + s.replace("\"", "\\\"") + "\""


def to_dhall_expression_string(obj, need_parens, indent, increment_indent):
    if isinstance(obj, str):
        return quote(obj)
    elif isinstance(obj, int) or isinstance(obj, float):
        return str(obj)
    elif isinstance(obj, list):
        return "[" + ",".join([
            "\n" + indent + increment_indent + to_dhall_expression_string(e, False, indent + increment_indent, increment_indent) for e in obj
        ]) + "\n" + indent + "]"
    elif isinstance(obj, dict):
        if "__constructor" in obj:
            es = obj["__constructor"]
            if "__argument" in obj:
                es += " " + to_dhall_expression_string(obj["__argument"], True, indent, increment_indent)
                if need_parens:
                    es = "(" + es + ")"
            return es
        elif "__import" in obj:
            return obj["__import"]
        elif "__let" in obj:
            return ("\n" + indent).join(chain(("let " + name + " = " + to_dhall_expression_string(value, False, indent, increment_indent) for name, value in obj["__let"].items()), ["in " + to_dhall_expression_string(obj["__in"], False, indent, increment_indent)]))
        else:
            return "{" + ",".join([
                "\n" + indent + increment_indent + k + " = " + to_dhall_expression_string(v, False, indent + increment_indent, increment_indent) for k, v in obj.items() if v is not None
            ]) + "\n" + indent + "}"
    else:
        raise ValueError(f"unsupported object type {obj}")
    
    
    