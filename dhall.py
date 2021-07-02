from itertools import chain

def record_completion(default_from, update_to):
    return {
        "__default_from": default_from,
        "__update_to": update_to
    }

def application(func, *args):
    if len(args) == 0:
        return func
    else:
        arg, *tail = args
        return application({
            "__apply": func,
            "__to": arg
        }, *tail)

def identifier(s):
    return {
        "__identifier": s
    }


def let(assignments, expr):
    return {
        "__let": assignments,
        "__in": expr
    }


def ascribe(te, ty):
    return {
        "__ascribe": te,
        "__as": ty
    }


def record_completion(r, c):
    return {
        "__default_from": r,
        "__update_to": c
    }


positive_infinity = {
    "__infinity": None
}

negative_infinity = {
    "__negative_infinity": None
}


def construct(constructor, argument):
    return application(identifier(constructor), argument)


def some(argument):
    return construct("Some", argument)


def none(t):
    return application(identifier("None"), t)


def dump(obj, f):
    f.write(to_dhall_expression_string(obj, False, "", "    "))


def quote(s):
    return "\"" + s.replace("\"", "\\\"").replace("\n", "\\n") + "\""


def id(i):
    return i if i.isidentifier() else "`" + i + "`"


def imp(i):
    return {
        "__import": i
    }


def parenthesize(es):
    return "(" + es + ")"


def to_dhall_expression_string(obj, need_parens, indent, increment_indent):
    if isinstance(obj, str):
        return quote(obj)
    elif isinstance(obj, bool):
        return "True" if obj else "False"
    elif isinstance(obj, float):
        return str(obj)
    elif isinstance(obj, int) or isinstance(obj, float):
        return str(obj)
    elif isinstance(obj, list):
        return "[" + ",".join([
            "\n" + indent + increment_indent + to_dhall_expression_string(e, False, indent + increment_indent, increment_indent) for e in obj
        ]) + "\n" + indent + "]"
    elif isinstance(obj, dict):
        if "__apply" in obj:
            es = to_dhall_expression_string(obj["__apply"], False, indent, increment_indent) + " " + to_dhall_expression_string(obj["__to"], True, indent, increment_indent)
            if need_parens:
                es = parenthesize(es)
            return es
        elif "__identifier" in obj:
            return obj["__identifier"]
        elif "__import" in obj:
            return obj["__import"]
        elif "__let" in obj:
            return ("\n" + indent).join(chain(("let " + name + " = " + to_dhall_expression_string(value, False, indent, increment_indent) for name, value in obj["__let"].items()), ["in " + to_dhall_expression_string(obj["__in"], False, indent, increment_indent)]))
        elif "__ascribe" in obj:
            es = to_dhall_expression_string(obj["__ascribe"], True, indent, increment_indent) + " : " + to_dhall_expression_string(obj["__as"], True, indent, increment_indent)
            if need_parens:
                es = parenthesize(es)            
            return es
        elif "__default_from" in obj:
            d = obj["__update_to"]
            es = to_dhall_expression_string(d, False, indent, increment_indent)
            if isinstance(d, dict) and "__import" in d:
                es = parenthesize(es)
            return obj["__default_from"] + " :: " + es
        elif "__infinity" in obj:
            return "Infinity"
        elif "__negative_infinity" in obj:
            return "-Infinity"
        else:
            return "{" + ",".join([
                "\n" + indent + increment_indent + id(k) + " = " + to_dhall_expression_string(v, False, indent + increment_indent, increment_indent) for k, v in obj.items() if v is not None
            ]) + "\n" + indent + "}"
    else:
        raise ValueError(f"unsupported object type {obj}")
    
    
    
