"""A hello-world filter plugin in sinetris.cloudstack."""

from __future__ import absolute_import, annotations, division, print_function


__metaclass__ = type  # pylint: disable=C0103

from typing import TYPE_CHECKING


if TYPE_CHECKING:
    from typing import Callable


def _hello_world(name: str) -> str:
    """Returns Hello message.

    Args:
        name: The name to greet.

    Returns:
        str: The greeting message.
    """
    return "Hello, " + name


class FilterModule:
    """
    filter plugin.
    """

    def filters(self: FilterModule) -> dict[str, Callable[[str], str]]:
        """Map filter plugin names to their functions.

        Returns:
            dict: The filter plugin functions.
        """
        return {"hello_world": _hello_world}
